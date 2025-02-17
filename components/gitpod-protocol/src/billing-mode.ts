/**
 * Copyright (c) 2022 Gitpod GmbH. All rights reserved.
 * Licensed under the GNU Affero General Public License (AGPL).
 * See License-AGPL.txt in the project root for license information.
 */

/**
 * BillingMode is used to answer the following questions:
 *  - Should UI piece x be displayed for this user/team? (getBillingModeForUser/Team)
 *  - What model should be used to limit this workspace's capabilities (mayStartWorkspace, setTimeout, workspace class, etc...) (getBillingMode(workspaceInstance.attributionId))
 *  - How is a workspace session charged for? (getBillingMode(workspaceInstance.attributionId))
 */
export type BillingMode = None | Chargebee | UsageBased;
export namespace BillingMode {
    export const NONE: None = {
        mode: "none",
    };

    /** Incl. upgrade and status */
    export function showUsageBasedBilling(billingMode?: BillingMode): boolean {
        if (!billingMode) {
            return false;
        }
        return (
            billingMode.mode === "usage-based" || (billingMode.mode === "chargebee" && !!billingMode.canUpgradeToUBB)
        );
    }

    export function canSetWorkspaceClass(billingMode: BillingMode): boolean {
        // if has any Stripe subscription, either directly or per team
        return billingMode.mode === "usage-based";
    }

    export function canSetCostCenter(billingMode: BillingMode): boolean {
        // if has any Stripe Subscription, either directly or per team
        return billingMode.mode === "usage-based";
    }
}

/** Payment is disabled */
interface None {
    mode: "none";
}

/** Sessions is handled with old subscription logic based on Chargebee */
interface Chargebee {
    mode: "chargebee";
    canUpgradeToUBB?: boolean;
}

/** Session is handld with new usage-based logic */
interface UsageBased {
    mode: "usage-based";

    /** User is already converted, but is member with at least one Chargebee-based "Team Plan" */
    hasChargebeeTeamPlan?: boolean;

    /** User is already converted, but is member in at least one Chargebee-based "Team Subscription" */
    hasChargebeeTeamSubscription?: boolean;
}
