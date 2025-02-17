module github.com/gitpod-io/gitpod/ready-probe-labeler

go 1.18

require (
	github.com/gitpod-io/gitpod/common-go v0.0.0-00010101000000-000000000000
	github.com/spf13/pflag v1.0.5
	golang.org/x/net v0.0.0-20220708220712-1185a9018129
	golang.org/x/xerrors v0.0.0-20220609144429-65e65417b02f
	k8s.io/apimachinery v0.23.5
	k8s.io/client-go v0.0.0-00010101000000-000000000000
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-logr/logr v1.2.0 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/google/go-cmp v0.5.7 // indirect
	github.com/google/gofuzz v1.1.0 // indirect
	github.com/googleapis/gnostic v0.5.5 // indirect
	github.com/imdario/mergo v0.3.5 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/sirupsen/logrus v1.8.1 // indirect
	golang.org/x/oauth2 v0.0.0-20210819190943-2bc19b11175f // indirect
	golang.org/x/sys v0.0.0-20220520151302-bc2c85ada10a // indirect
	golang.org/x/term v0.0.0-20210927222741-03fcf44c2211 // indirect
	golang.org/x/text v0.3.7 // indirect
	golang.org/x/time v0.0.0-20210723032227-1f47c861a9ac // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/protobuf v1.28.0 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b // indirect
	k8s.io/api v0.23.5 // indirect
	k8s.io/klog/v2 v2.30.0 // indirect
	k8s.io/kube-openapi v0.0.0-20211115234752-e816edb12b65 // indirect
	k8s.io/utils v0.0.0-20211116205334-6203023598ed // indirect
	sigs.k8s.io/json v0.0.0-20211020170558-c049b76a60c6 // indirect
	sigs.k8s.io/structured-merge-diff/v4 v4.2.1 // indirect
	sigs.k8s.io/yaml v1.2.0 // indirect
)

replace github.com/gitpod-io/gitpod/common-go => ../../components/common-go // leeway

replace github.com/gitpod-io/gitpod/content-service/api => ../../components/content-service-api/go // leeway

replace github.com/gitpod-io/gitpod/image-builder/api => ../../components/image-builder-api/go // leeway

replace github.com/gitpod-io/gitpod/public-api => ../../components/public-api/go // leeway

replace github.com/gitpod-io/gitpod/registry-facade/api => ../../components/registry-facade-api/go // leeway

replace github.com/gitpod-io/gitpod/ws-daemon/api => ../../components/ws-daemon-api/go // leeway

replace github.com/gitpod-io/gitpod/ws-manager-bridge/api => ../../components/ws-manager-bridge-api/go // leeway

replace github.com/gitpod-io/gitpod/ws-manager/api => ../../components/ws-manager-api/go // leeway

replace k8s.io/api => k8s.io/api v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/apimachinery => k8s.io/apimachinery v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/apiserver => k8s.io/apiserver v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/cli-runtime => k8s.io/cli-runtime v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/client-go => k8s.io/client-go v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/cloud-provider => k8s.io/cloud-provider v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/code-generator => k8s.io/code-generator v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/component-base => k8s.io/component-base v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/cri-api => k8s.io/cri-api v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/kube-proxy => k8s.io/kube-proxy v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/kubelet => k8s.io/kubelet v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/metrics => k8s.io/metrics v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/component-helpers => k8s.io/component-helpers v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/controller-manager => k8s.io/controller-manager v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/kubectl => k8s.io/kubectl v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/mount-utils => k8s.io/mount-utils v0.23.5 // leeway indirect from components/common-go:lib

replace k8s.io/pod-security-admission => k8s.io/pod-security-admission v0.23.5 // leeway indirect from components/common-go:lib
