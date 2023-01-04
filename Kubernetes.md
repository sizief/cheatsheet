# K8s

#### definations
Cluster: The physical platform where all  components, capabilities are hosted.
Context: Cluster and User config. An abstraction for Kubectl.
Namespace: logical partition inside a specific cluster


## Kubectl
Command line tool to interact with K8s

#### All together
```bash
kubectl create deployment hello-node --image=registry.k8s.io/echoserver:1.4
kubectl expose deployment/hello-node --type=NodePort --port=8080
kubectl scale deployments/hello-node --replicas=1
kubectl get pods
kubectl logs hello-node-775ff78448-v7zq7 -f
curl $(minikube):PORT # port is coming from kubectl get services
```

#### Cluster
```shell
kubectl cluster-info
kubectl get nodes
```

#### Deployments
```shell
kubectl create deployment hello-node --image=registry.k8s.io/echoserver:1.4
kubectl get deployments
kubectl delete deployment hello-node
```

#### ReplicaSet
```bash
kubectl get rs
```

#### Pods
```shell
kubectl get pods # -A for all namespaces
kubectl describe pods
```

#### Service
```shell
kubectl expose deployment hello-node --type=LoadBalancer --port=8080
kubectl expose deployment/hello-node --type=NodePort --port=8080
kubectl get services
kubectl describe services/kubernetes
kubectl delete service hello-node
```

Pods can see each other by using the service name, for example in the following service manifest:
```
apiVersion: v1
kind: Service
metadata:
  name: ambassador-test-svc
spec:
  selector:
    app: ambassador-test
  ports:
  - protocol: TCP
    port: 8081
    targetPort: 80
```
this service is reachanble by `curl ambassador-test-svc:8081` from other pods in the same namespace

#### ConfigMaps
```shell
cat <<EOF >./cf.yaml
apiVersion: v1
kind: ConfigMap
metadata:                 
  name: hello-world      
  data:                    
    player: "3"
EOF
kubectl apply -f cf.yaml

# inside the deployment add
#        env:
        - name: DEMO_GREETING2
          value: "Hello from the environment"
        - name: SPECIAL_LEVEL_KEY
          valueFrom:
            configMapKeyRef:
              name: hello-world
              key: player

```

#### Others
```shell
kubectl get events
kubectl config view
kubectl logs podname
kubectl exec -ti hello-node-775ff78448-sjlc4 -- bash
```

#### Rollout
```bash
kubectl rollout status deployments/kubernetes-bootcamp
kubectl rollout undo deployments/kubernetes-bootcamp
```

#### Context
All context configs are saved in `~/.kube/config`
```shell
kubectl config use-context minikube
```


#### Namespaces
```bash
kubectl get namespaces
```

#### Cronjobs
```shell
kubectl get cronjobs
kubectl delete cronjobs CRONNAME
```

#### Flux
```bash
flux get kustomizations --watch
flux suspend kustomization <name> # to stop listening to git repo and made changes
flux resume kustomization <name> # continue fluxing
```

## Minikube
A tool to play with K8S on local machine
```shell
minikube start
minikube stop
minikube delete # deletes vm
minikube dashboard
minikube service hello-node # to assign public ip to load balancer
```

#### Addons
```shell
minikube addons list
minikube addons enable metrics-server
```
