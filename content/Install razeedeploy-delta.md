---
title: Installing razeedeploy-delta
--- 

```bash
kubectl apply -f https://github.com/razee-io/Razee/releases/latest/download/razeedeploy.yaml
```

Example output:

```bash
namespace/razeedeploy created
serviceaccount/razeedeploy-sa created
clusterrole.rbac.authorization.k8s.io/razeedeploy-admin-cr configured
clusterrolebinding.rbac.authorization.k8s.io/razeedeploy-rb configured
job.batch/razeedeploy-job created

kubectl get deploy -n razeedeploy
NAME                        READY   UP-TO-DATE   AVAILABLE   AGE
remoteresource-controller   1/1     1            1           56s
```

---
Next: [[install razeedash]]

What is [[razeedeploy-delta]] ?