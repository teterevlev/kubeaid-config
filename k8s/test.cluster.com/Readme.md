# Directory structure

This folder should contain these folders - 

1. `argocd-apps`  - It contains your charts template and charts values files.

2. `kube-prometheus` - This is created on its own when the CI runs. More info here https://github.com/Obmondo/k8id#ci-build-and-automatic-pull-requests

3. `sealed-secrets` - Contains your sealed secrets

It also contains a jsonnet file whose naming should be `${clustername}-vars.jsonnet`, like if you clustername is `test.cluster.com` so, the jsonnet filename would be `test.cluster.com-vars.jsonnet`. 

Based on this jsonnet file your `kube-prometheus` folder is created
