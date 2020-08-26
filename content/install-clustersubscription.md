---
title: Install ClusterSubscription
---

- Logon to your RazeeDash server and go to the manage org page
  - ie. `https://app.razee.io/stark-industries/org`
- Click the `Register cluster` button, give your cluster a name and run the provided `kubectl` command
  - ie. `kubectl apply -f "https://app.razee.io/api/install/razeedeploy-job?orgKey=orgApiKey-..."`
- Verify that a `razee-identity` ConfigMap and Secret have been created on your cluster
- Logon to your RazeeDash server and go to the `Deployables` page to create [[Channels]], [[Cluster Groups]] and [[Subscriptions]]

---
Next: [[create a channel]]

[ClusterSubscription on GitHub](https://github.com/razee-io/ClusterSubscription)
