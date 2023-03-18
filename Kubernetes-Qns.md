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
