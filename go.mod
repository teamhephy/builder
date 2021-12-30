module builder

go 1.16

require (
	github.com/Azure/azure-sdk-for-go v60.3.0+incompatible // indirect
	github.com/Azure/go-autorest/autorest v0.11.23 // indirect
	github.com/Azure/go-autorest/autorest/to v0.4.0 // indirect
	github.com/arschles/assert v0.0.0-20150820224400-6882f85ccdc7
	github.com/aws/aws-sdk-go v1.15.11
	github.com/blang/semver v3.0.1+incompatible // indirect
	github.com/codegangsta/cli v1.9.0
	github.com/coreos/go-oidc v0.0.0-20160504003935-5cf2aa52da8c // indirect
	github.com/coreos/go-systemd v0.0.0-20160527140244-4484981625c1 // indirect
	github.com/coreos/pkg v0.0.0-20160620232715-fa29b1d70f0b // indirect
	github.com/dnaeon/go-vcr v1.2.0 // indirect
	github.com/docker/distribution v2.7.1+incompatible
	github.com/docker/engine-api v0.4.0 // indirect
	github.com/docker/go-connections v0.4.0 // indirect
	github.com/docker/go-metrics v0.0.1 // indirect
	github.com/docker/go-units v0.4.0 // indirect
	github.com/emicklei/go-restful v1.1.4-0.20160814184150-89ef8af493ab // indirect
	github.com/gofrs/uuid v4.2.0+incompatible // indirect
	github.com/google/cadvisor v0.24.0-alpha1.0.20161021224824-a726d13de8cb // indirect
	github.com/gorilla/context v0.0.0-20140604161150-14f550f51af5 // indirect
	github.com/gorilla/mux v0.0.0-20140926153814-e444e69cbd2e // indirect
	github.com/goware/urlx v0.3.1 // indirect
	github.com/jonboulle/clockwork v0.0.0-20141017032234-72f9bd7c4e0c // indirect
	github.com/juju/ratelimit v0.0.0-20151125201925-77ed1c8a0121 // indirect
	github.com/kelseyhightower/envconfig v1.4.0
	github.com/kylelemons/godebug v1.1.0 // indirect
	github.com/ncw/swift v1.0.53 // indirect
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/pborman/uuid v0.0.0-20150603214016-ca53cad383ca
	github.com/smartystreets/goconvey v1.7.2 // indirect
	github.com/spf13/cobra v1.3.0 // indirect
	github.com/teamhephy/builder v2.13.7+incompatible
	github.com/teamhephy/controller-sdk-go v0.0.0-20181015154232-a1ffb4886a5f
	github.com/teamhephy/pkg v0.5.1-0.20180912202400-777f37a30108
	github.com/ugorji/go v0.0.0-20151028022000-f1f1a805ed36 // indirect
	golang.org/x/crypto v0.0.0-20210921155107-089bfa567519
	google.golang.org/cloud v0.0.0-20151119220103-975617b05ea8 // indirect
	gopkg.in/inf.v0 v0.9.0 // indirect
	gopkg.in/yaml.v2 v2.4.0
	k8s.io/client-go v0.0.0-20170211140036-e5fcd1eb6215 // indirect
	k8s.io/kubernetes v1.4.12
)

// replace github.com/docker/distribution/digest => github.com/opencontainers/go-digest v0.0.0-20190228220655-ac19fd6e7483

replace github.com/docker/distribution => github.com/fluxcd/distribution v0.0.0-20190419185413-6c9727e5e5de
