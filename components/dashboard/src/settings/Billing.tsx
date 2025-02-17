/**
 * Copyright (c) 2022 Gitpod GmbH. All rights reserved.
 * Licensed under the GNU Affero General Public License (AGPL).
 * See License-AGPL.txt in the project root for license information.
 */

import { PageWithSettingsSubMenu } from "./PageWithSettingsSubMenu";
import { BillingAccountSelector } from "../components/BillingAccountSelector";

export default function Billing() {
    return (
        <PageWithSettingsSubMenu title="Billing" subtitle="Usage-Based Billing.">
            <h3>Usage-Based Billing</h3>
            <h2 className="text-gray-500">Manage usage-based billing, spending limit, and payment method.</h2>
            <div className="mt-8">
                <h3>Billing Account</h3>
                <BillingAccountSelector />
            </div>
        </PageWithSettingsSubMenu>
    );
}
