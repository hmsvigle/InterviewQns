* Helm 
	- Charts & Subcharts
* Docker Architecture:
	
* SecurityContexts
* How the controlplane components interact among themselves to deploy the pod.
* How Enrtypoint can be overwritten in yaml ? 

* When to chose Deployment/Statefulset ?
  * I deployed a Deployment. But i dont see any pods coming up. How to troubleshoot ?
* What ingress controller can be used ?
* Annotation Vs Labels 

* Static Pod :-
* Whats the Evicted status means ?
* Sidecar / Init Container
* Can we run parallel k8s jobs

* "restartPolicy" - Job & restartPolicy=Always

* HA setup Qns ?
	VIP vs WIP ?
	how load balancing done at LB ?
	HA on k8s 
	restirct 
---------

1. Explain k8s architecture: control-plane & data-plane components (kubelet,kube proxy, container run time)!!
	Kube-Proxy :- It is nw proxy runs on each node & maintains network rules on the nodes.
	Kubectl apply pod.yaml --> Whats the backend communication flow ?
2. Explain control-plane components in brief !! ()
3. Explain step by step process, when a deploment is triggered on k8s
apiserver --> edtcd --> controller --> scheduled --> apiserver --> kubelet --> pod deployed --> update in etcd.
		(Auth)		()		
4. How was the k8s cluster setup done ?
Openstack Vs Openshift
      IAAS     -    PAAS

5. 5 deployments & 10 service. How to find out idle services

6. FE - ns1 & Backend-app : ns2. What is the url for backend-service

7. Difference set image in deployment vs statefulset

8. Deployments:
	* What is maxSurge in Rolling update ?
	* Blue-Green Vs canary Deployment ?
		* 2 versions (Blue & Green) 
		* 2 versions & define weightage to routing
			- 

 
10. Kubectl set image command for Deployment ?

11. Pod going into Crashloop Backoff
	* no error in describe & in logs
	* How to troubleshoot the issue
	--> What you would do ?
 
12. Types of Strategies in Deployment?
	* Rolling Update
	* Recreate Strategy
	* 
What was the storage used Underneeth ?
How you can


5. Kube-proxy vs kubectl proxy  ?
*  Could you please list few k8s controllers ?

9. What is Liveness & Readiness Probe ? --> what should be the initialDelaySeconds for liveness & readiness probe

11. How you would find out new parameters from upgraded k8s version ?
"kubectl explain"

1. How PV & PVC binds ?
	- ClassName, ReclaimPolicy & AccessMode
	- persistentVolumeReclaimPolicy

Parameters based on which pV & PVC binds to each other ?

2. What is a storageClass ?
3. What are ingress controllers you have used ? Explain the scenario replicated.
* Ingress vs IngressRoutes
3. 1 How 2 applications (microservices) interact with each other ?


4. Explain Networkpolicy for A --> B
5. Diff btwn rs vs dep vs sts
6. Scenario: 3 replicas, 1 needs to be master -> deployment / sts
7. Preload binaries & then start application : (init Container)
8. How to deploy logstash for application to capture the logs ? (sidecar)
readwritemany
9. explain ur CI/CD pipeline
10. Some qns from Security practices for K8s
11. How to implement a resource quota ? can we do it on a running namespace dynamically ?
12. What is LifeCycle in k8s ?
13. 

3. 1 deployment binds with PV. we make changes to deployment, which fails, so how to fix it ?
   What would happen ?

3. Issues you have faced while working.
4. what if pod gets restarted frequently. how u would troubleshoot the issue ?

- What is External IP service ? How it is different from Lb-svc ?
- k8s operator vs controller ?
- what is cre(container runtime engine) ie. docker, conatinerd, rocket


K8s Admin:
* Try with kubeadm
* Try with openshift
* Try setting up Jenkins server



Hands-on:
`````````

1. How to find out what all apiVersions available for the specific Kind ?
2. How to export all components from Namespace ?
3. What are the best practices you would suggest for an application ?
4. Whats the ideal way of injecting secret to a pod ? Env/Envfrom / "volume" ?
5. What is PDB ?
6. What is HPA ?
7. Can a single Volume be shared multiple containers (readwriteonce policy is enabled)
	Scenario: configure logging solution, how logstash is collects logs from appl ?
	Scenario: Load some config first, before starting the actual application. How to achive that ?
		 eg: Load grafana plugins first & attach to grafana pod. (InitContainer)
8. Security Topics: ar
	What are capabilities & when to assign them to pod ?
9. Deployment Vs Statefulset ?
10. Webhooks
11. ImagepullSecret from single namespace ?
12. Prod Priority & Preemption ?
13. What URL ApiServer hits for Authentication & Authorization
14. Security - PSP, SA, Roles, Security Context, No elivated access, Encryption tools, 
15. 


Scheduling:-
```````````
1. Why no loads scheduled on Master Node ?	Ans:- taint: "NoSchedule"
2. Taint/Tolerations Vs Node-Affinity/Anti-Affinity ?

3. What is Pod Evicted means ? 
	Ans:- Pod is killed. eg- if pod is already deployed, later that node is tainted, then the pod will be killed to get scheduled on diff node.
4. What are Static Pods ?
	Ans:- * Under control of kubelet, not by controlplane components.
	  * by placing manifest file in /etc/kubernetes/manifest/ dir, kubelet creates the pod.
	  * Readonly by kube-ApiServer
	  * Pods scheduled by kube-scheduler will be evicted in cases where the node is drained or goes down.

Infra (Admin):
``````````````
kubeadm:
````````
1. Cluster upgrade steps ?
2. kubeadm doesnt upgrade kubelet, so update manually !!

Control-plane:
``````````````
1. What is inbound/outbound point for k8s cluster? Ans:- kubeApiServer & RouterIP
2. To Open Firewall from tenant-A --> tenant-B, what source & dest details you will have to provide ?
	Ans:- Src [ A-RouterIP ] --> Dest [ B-KubeApi ]
3. Define step by step, what will happen - `kubectl create -f deployment.yaml`
	Ans:-

4. Can we deploy a custom-Scheduler of our own ? How ?
Ans: leader-ellect=false


Infra (Admin):
``````````````
kubeadm:
````````
1. Cluster upgrade steps ?
2. kubeadm doesnt upgrade kubelet, so update manually !!

Control-plane:
``````````````
1. What is inbound/outbound point for k8s cluster? Ans:- kubeApiServer & RouterIP
2. To Open Firewall from tenant-A --> tenant-B, what source & dest details you will have to provide ?
	Ans:- Src [ A-RouterIP ] --> Dest [ B-KubeApi ]
3. Define step by step, what will happen - `kubectl create -f deployment.yaml`
	Ans:-

4. Can we deploy a custom-Scheduler of our own ? How ?
Ans: leader-ellect=false


Proxies in kubernetes
References:
https://kubernetes.io/docs/concepts/cluster-administration/proxies/

1. Kubectl proxy:
	Creates a proxy server or application-level gateway between localhost and the Kubernetes API server. It also allows serving static content over specified HTTP path. All incoming data enters through one port and gets forwarded to the remote Kubernetes API server port, except for the path matching the static content path.

o runs on a user's desktop or in a pod
o proxies from a localhost address to the Kubernetes apiserver
o client to proxy uses HTTP
o proxy to apiserver uses HTTPS
o locates apiserver
o adds authentication headers

2. Kube Proxy:

o is a bastion built into the apiserver
o connects a user outside of the cluster to cluster IPs which otherwise might not be reachable
o runs in the apiserver processes
o client to proxy uses HTTPS (or http if apiserver so configured)
o proxy to target may use HTTP or HTTPS as chosen by proxy using available information
o can be used to reach a Node, Pod, or Service
o does load balancing when used to reach a Service

3. Kube-Apiserver Proxy:

o runs on each node
o proxies UDP, TCP and SCTP
o does not understand HTTP
o provides load balancing
o is only used to reach services

=======


1. Stateful vs Stateless Application 
2. FE & Backend
	 How ingress & netpol will be deployed
	 How DB password can be configured in FE
	 db client to be installed into FE pod to connect to DB & fetch info. 
		I am not ready to change the application image. How to approach it  - ans is init container 
		 can we run init container as root, if running any app with root previlege is disabled on the tenant. - capabilities 
 
3. LivenessProbe, probing techniques used 
	 For an App, if I want to perform Liveness probe, 
		what all details you would need from me ?
	 parameters in probe : 
	 	 initialDelaySeconds - 
		 periodSeconds -
4. Kubectl set image command


5. RBAC
* Role & Rolebinding, ClusterRole & Clusterrolebinding
* Defender agent on K8s cluster 
* Istio & Linkerd 
* 

6. How PV & PVC binds ?
	- StorageClass, ReclaimPolicy & AccessMode
	
Parameters based on which pV & PVC binds to each other ?

7. What is a storageClass ?
   
8. HPA vs VPA ?
	Pre-requisites ?

9. Static Pod ?

Scenario based Qns:
1. There are 5 deployments & 10 services. How to find out services without any endpoints ?
2. FE - ns1 & Backend-app : ns2. configure BS url into FE config. What is the url for backend-service ?
3. What all steps you will take to have High Availability setup for any app ? 
4. What all security Features you would implement ?
5. App takes 30s to start. What is Liveness & Readiness Probe Intial delay sec to set ?
6. When SecurityContext set at container or Pod label, what is the difference ?
7. Non-root container, Attach PV. Now how to write to the Mounted volume ? 
	* When we mount the volume, whats the ownership of the directory ? can any user, write to that ?
	* 
8. Rollback a deployment command ?
9. PSP ? Pod Security policy ?

10. kubectl update set image
11. Node Port Service, What is the IP represent ?
12. Pod going into Crashloop Backoff
	* no error in describe & in logs
	* How to troubleshoot the issue
	--> What you would do ?
13. Kubernetes vs Docker Swarm ?
14. For AKS clutster, 

