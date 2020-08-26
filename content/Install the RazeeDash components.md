---
title: RazeeDash install
aliases: ["install razeedash"]
---

Run this command in your cluster

```bash
kubectl apply -f https://github.com/razee-io/Razee/releases/latest/download/razeedash-all-in-one.yaml

persistentvolume/mongo-pv-volume created
persistentvolumeclaim/mongo-pv-claim created
deployment.apps/mongo created
service/mongo created
secret/razeedash-secret created
remoteresource.deploy.razee.io/razeedash created
service/razeedash-lb created
service/razeedash-api-lb created
```

Wait for the `razeedash-api` deployment to complete.  An instance of MongoDB is created in your cluster and connected to the RazeeDash API instance. The setup of MongoDB takes a few of minutes to complete and might lead to intermittent `MongoNetworkError` errors in your RazeeDash API deployment. When MongoDB is fully set up, Kubernetes automatically finishes the setup of your RazeeDash API instance.

```bash
kubectl logs deploy/razeedash-api -n razee
```

Example output if RazeeDash API is fully set up:

```bash
 > razeedash-api@0.6.3 start /usr/src
 > node app/index.js
  {"name":"apollo/subscription","parseUA":false,"excludes":["referer","url","body","short-body"],"hostname":"razeedash-api-7bd66669b7-jj2vj","pid":17,"level":30,"msg":"Apollo streaming servic e is configured on redisUrl: redis://redis-service:6379/0","time":"2020-06-03T21:57:16.021Z","v":0}
  {"name":"apollo/subscription","parseUA":false,"excludes":["referer","url","body","short-body"],"hostname":"razeedash-api-7bd66669b7-jj2vj","pid":17,"level":30,"msg":"Apollo streaming is ena bled on redis endpoint redis-service:6379","time":"2020-06-03T21:57:17.062Z","v":0}
  {"name":"/","parseUA":false,"excludes":["referer","url","body","short-body"],"hostname":"razeedash-api-7bd66669b7-jj2vj","pid":17,"level":30,"msg":"Created new collection users index users" ,"time":"2020-06-03T21:57:17.222Z","v":0}
  {"name":"/","parseUA":false,"excludes":["referer","url","body","short-body"],"hostname":"razeedash-api-7bd66669b7-jj2vj","pid":17,"level":30,"msg":"Created new View clusterStatsView","time" :"2020-06-03T21:57:17.239Z","v":0}
  {"name":"/","parseUA":false,"excludes":["referer","url","body","short-body"],"hostname":"razeedash-api-7bd66669b7-jj2vj","pid":17,"level":30,"msg":"Created new View resourceStatsView","time ":"2020-06-03T21:57:17.241Z","v":0}
  {"name":"apollo/models","parseUA":false,"excludes":["referer","url","body","short-body"],"hostname":"razeedash-api-7bd66669b7-jj2vj","pid":17,"level":30,"msg":"SetupDistributedCollections r eceived modelName=resources for DB mongodb://mongo:27017/razeedash","time":"2020-06-03T21:57:17.284Z","v":0}
  {"name":"apollo/models","parseUA":false,"excludes":["referer","url","body","short-body"],"hostname":"razeedash-api-7bd66669b7-jj2vj","pid":17,"level":30,"msg":"SetupDistributedCollections r eceived modelName=orgs for DB mongodb://mongo:27017/razeedash","time":"2020-06-03T21:57:17.295Z","v":0}
  {"name":"apollo/models","parseUA":false,"excludes":["referer","url","body","short-body"],"hostname":"razeedash-api-7bd66669b7-jj2vj","pid":17,"level":30,"msg":"SetupDistributedCollections:c lusters - received modelName=clusters for DB mongodb://mongo:27017/razeedash","time":"2020-06-03T21:57:17.297Z","v":0}
  {"name":"apollo","parseUA":false,"excludes":["referer","url","short-body","user-agent","req","res"],"hostname":"razeedash-api-7bd66669b7-jj2vj","pid":17,"level":30,"msg":"Initialize apollo application for default auth","time":"2020-06-03T21:57:17.298Z","v":0}
  {"name":"apollo","parseUA":false,"excludes":["referer","url","short-body","user-agent","req","res"],"hostname":"razeedash-api-7bd66669b7-jj2vj","pid":17,"level":30,"msg":"[] Apollo server c ustom plugin are loaded.","time":"2020-06-03T21:57:17.299Z","v":0}
  {"name":"razeedash-api","hostname":"razeedash-api-7bd66669b7-jj2vj","pid":17,"level":30,"msg":"🏄 razeedash-api listening on port 3333/api","time":"2020-06-03T21:57:17.723Z","v":0}
{"name":"apollo","parseUA":false,"excludes":["referer","url","short-body","user-agent","req","res"],"hostname":"razeedash-api-7bd66669b7-jj2vj","pid":17,"level":30,"msg":"🏄 Apollo server listening on http://[::]:3333/graphql","time":"2020-06-03T21:57:17.734Z","v":0}
```

---
Next: [[Create a razeedash-config ConfigMap]]