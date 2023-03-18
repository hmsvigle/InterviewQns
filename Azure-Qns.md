
Azure Qns:

1. Lock Significance:
* During AKS Upgrade, Its getting errored out as IP is locked.

2. How to Integrate AKV with AKS ?

3. Difference between Azure CNI & Kubelet CNI ?

4. if we stop a VM, will the IP be released from the subnet pool or not ?

5. We have aks deployed with less IP range for nodepool. Now we need to extend, which fails due to less IPs available. 
So how to solve this issue ?

6. What CNI to be used while creating aks cluster ?
* Azure CNI
* kubenet 
7. Difference between Azure CNI & Kubenet ?

8. Can we add new address space to a Vnet ?
9. If we add a new address space to Vnet, then What will happen to the peered Vnet connection ? What has to be done to fix the issue ?
10. Attach PV as 

11. What is Service Principal ?
	* Can MFA be enabled for it ? - No
12. What is Managed Service Idenity ?
	* Can MFA be enabled for it ? - Not applicable
	* Meant for connection between Azure Resources, not outside 

13. What is Private DNS Zone ?
	* What is Virtual Network Link ?
	* What does Autoregistration means ?
	* 

14. What are default rules in NSG are defined ?
	* 

15. What is Service End-Point ? How to enable it ?
	* 
	
16. Can 1 VM be assigned 2 NICs ? How ?

17. Can NSG be assigned to Vnet / Subnet / NIC / All ? 
	* VNET - No, NIC & Subnet - Yes
18. Service Endpoint VS Private EndPoint ?

19. User Definded Routes (UDR) 
	* Route Table - Attach to Source
	* Route 
		* Address Prefix - VNET Address of Destination
		* Next Hop - Type  & IP of Appliance (in diff Vnet)
	* Enable IP Forwarding in Appliance

20. In Vnet Peering How the communication happens ? 
	* Azure Backbone Network 

21. Add Address Space to 1 Vnet of a peered network, How existing peering will react ?
	* Re-Peering has to be done from both Vnet end for Consistency.

22. Local gateway configured in case of P2S / S2S Connection ?
23. How the communicaton happens in S2S VPN Connction ?
	* IP Sec Channels
	
24. Types of LB ? 
25. Azure Load Balancer 
	* Basic SKU 	       VS	Standard SKU
          ``````````		|	````````````
	  1 VM 			|       Multiple VM 
	  AV Set/Scaleset	|	Availability Set/Scaleset
	  No NSG		|	NSG
				|	99.99% HA
							
							

	
Production AKS Setup:
1. Hub-Spoke Topology
	
