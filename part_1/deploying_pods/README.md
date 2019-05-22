## Running your first *pod* in Kubernetes

Ok, you've run one of the [getting started guides](https://kubernetes.io/docs/user-journeys/users/application-developer/foundational/#section-1) and you have
successfully turned up a Kubernetes cluster.  Now what?  This guide will help you get oriented
to Kubernetes and running your first containers on the cluster.

### Running a container (simple version)

From this point onwards, it is assumed that `kubectl` is on your path from one of the getting started guides.

The [`kubectl create`](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#create) line below will create a [deployment](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/) named `my-nginx` to ensure that there are always a [nginx](https://hub.docker.com/_/nginx/) [pod](https://kubernetes.io/docs/concepts/workloads/pods/pod-overview/) running.

```bash
kubectl create -f pod_nginx.yaml
```

You can list the pods to see what is up and running:

```bash
kubectl get pods
```

You can also see the definition of the pod that that was created:

```bash
kubectl describe pod nginx
```

You can also get into the nginx pod running:

```bash
kubectl exec -it nginx -- /bin/bash
```

### Exposing your pods on your local

You can make a port forwarding of the pod and reach it out on localhost:

```bash
kubectl port-forward pod/nginx 8999:80
```

In order to access your nginx landing page go to:

[http://localhost:8999](http://localhost:8999)

### Cleanup

To delete the two replicated containers, delete the deployment:

```bash
kubectl delete -f pod_nginx.yaml
```

