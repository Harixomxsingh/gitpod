// Copyright (c) 2022 Gitpod GmbH. All rights reserved.
// Licensed under the MIT License. See License-MIT.txt in the project root for license information.

package public_api_server

import (
	"fmt"
	"testing"

	"github.com/gitpod-io/gitpod/common-go/baseserver"
	"github.com/gitpod-io/gitpod/installer/pkg/common"
	"github.com/gitpod-io/gitpod/public-api/config"
	"github.com/stretchr/testify/require"
	corev1 "k8s.io/api/core/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

func TestConfigMap(t *testing.T) {
	ctx := renderContextWithPublicAPIEnabled(t)
	objs, err := configmap(ctx)
	require.NoError(t, err)

	require.Len(t, objs, 1, "must only render one configmap")

	expectedConfiguration := config.Configuration{
		GitpodServiceURL: "wss://test.domain.everything.awesome.is/api/v1",
		Server: &baseserver.Configuration{
			Services: baseserver.ServicesConfiguration{
				GRPC: &baseserver.ServerConfiguration{
					Address: fmt.Sprintf(":%d", GRPCContainerPort),
				},
				HTTP: &baseserver.ServerConfiguration{
					Address: fmt.Sprintf(":%d", HTTPContainerPort),
				},
			},
		},
	}

	expectedJSON, err := common.ToJSONString(expectedConfiguration)
	require.NoError(t, err)

	cm := objs[0].(*corev1.ConfigMap)
	require.Equal(t, &corev1.ConfigMap{
		TypeMeta: common.TypeMetaConfigmap,
		ObjectMeta: metav1.ObjectMeta{
			Name:        Component,
			Namespace:   ctx.Namespace,
			Labels:      common.CustomizeLabel(ctx, Component, common.TypeMetaConfigmap),
			Annotations: common.CustomizeAnnotation(ctx, Component, common.TypeMetaConfigmap),
		},
		Data: map[string]string{
			"config.json": string(expectedJSON),
		},
	}, cm)
}
