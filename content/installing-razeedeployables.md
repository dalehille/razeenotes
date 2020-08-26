---
title: Installing RazeeDeployables
---

1. [[Install ClusterSubscription]] 

2. Open the Deployables page in RazeeDash.

3. [[Create a channel]]

4. [[Create a cluster group]]

5. [[Upload a version]] of your Kubernetes resource from your source repository or
local machine to the channel. 

6. After the initial version of your Kubernetes resource is uploaded to Razee,
[[create a Razee subscription]] to apply the version in your cluster.

7. Verify that the Kubernetes resource was applied in your cluster.
   **Tip**: If you find that your resource was not applied in your cluster, verify
  that your YAML file has the correct format. Then, check the logs of the
  `clustersubscription-*` and `remoteresource-controller-*` pods in the
  `razeedeploy` namespace.
