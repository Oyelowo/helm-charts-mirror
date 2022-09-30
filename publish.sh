 helm template -f ./fluvio/k8-util/helm/fluvio-app/values.yaml fluvio-app  ./fluvio/k8-util/helm/fluvio-app


helm template -f ./fluvio/k8-util/helm/fluvio-sys/values.yaml fluvio-sys  ./fluvio/k8-util/helm/fluvio-sys




helm lint helm_charts2
helm package helm_charts2
helm repo index --url https://seaweedfs.github.io/<repo-name>/ .