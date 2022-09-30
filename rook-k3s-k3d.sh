 k3d cluster create test -v "/var/lib/kubelet:/var/lib/kubelet:shared"

# Add repo
helm repo add rook-release https://charts.rook.io/release 

# Update all repos
helm repo update

# Install operator
 helm install --create-namespace --namespace rook-ceph rook-ceph rook-release/rook-ceph
# Install operator with custom overriden values
#  helm install --create-namespace --namespace rook-ceph rook-ceph rook-release/rook-ceph -f values.yaml


# Install storage objects
 helm install --create-namespace --namespace rook-ceph rook-ceph-cluster \
   --set operatorNamespace=rook-ceph rook-release/rook-ceph-cluster

# Install storage objects with overriden values
# helm install --create-namespace --namespace rook-ceph rook-ceph-cluster \
#    --set operatorNamespace=rook-ceph rook-release/rook-ceph-cluster -f values-override.yaml