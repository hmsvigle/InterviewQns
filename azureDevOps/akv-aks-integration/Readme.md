
# Use the Azure Key Vault Provider for Secrets Store CSI Driver in an AKS cluster

## Steps

- Create AKS cluster and enable _azure-keyvault-secrets-provider_ add-on
  ```
  az aks create -n <cluster-name> -g <rg-name> --enable-addons azure-keyvault-secrets-provider --enable-managed-identity
  ```
- Create an Azure key vault instance and add necessary keys or secrets in it.
- Create a cluster identity
  ```
   export IDENTITY_RESOURCE_GROUP="Test-RG"
   export IDENTITY_NAME="application-identity"
   az identity create --resource-group ${IDENTITY_RESOURCE_GROUP} --name ${IDENTITY_NAME}
   export IDENTITY_CLIENT_ID="$(az identity show -g ${IDENTITY_RESOURCE_GROUP} -n ${IDENTITY_NAME} --query clientId -otsv)"
   export IDENTITY_RESOURCE_ID="$(az identity show -g ${IDENTITY_RESOURCE_GROUP} -n ${IDENTITY_NAME} --query id -otsv)"
  ```
- Assign necessary permissions to the identity
  ```
  NODE_GROUP=$(az aks show -g Test-RG -n Test --query nodeResourceGroup -o tsv)
  NODES_RESOURCE_ID=$(az group show -n $NODE_GROUP -o tsv --query "id")
  az role assignment create --role "Virtual Machine Contributor" --assignee "$IDENTITY_CLIENT_ID" --scope $NODES_RESOURCE_ID
  ```
- Create pod identity
  ```
  export POD_IDENTITY_NAME="my-pod-identity"
  export POD_IDENTITY_NAMESPACE="my-app"
  az aks pod-identity add --resource-group Test-RG --cluster-name Test --namespace ${POD_IDENTITY_NAMESPACE}  --name ${POD_IDENTITY_NAME} --identity-resource-id ${IDENTITY_RESOURCE_ID}
  ```
- Assign permissions to the new identity to enable it to read your key vault and view its contents
  ```
  az keyvault set-policy -n <keyvault-name> --key-permissions get --spn <pod-identity-client-id>
  az keyvault set-policy -n <keyvault-name> --secret-permissions get --spn <pod-identity-client-id>
  az keyvault set-policy -n <keyvault-name> --certificate-permissions get --spn <pod-identity-client-id>
  ```
- Create secret provider class
  ```
  kubectl apply -f secretproviderclass.yaml
  ```
- Create a sample pod and try accessing the secrets
  ```
  kubectl apply -f pod.yaml
  ```
  _Note : Pass the pod-identity name as a label when creating the pod_
- Verify if secrets are getting attached and created
  ```
  kubectl exec <pod-name> -- ls <volume-mount-path>
  kubectl exec <pod-name> -- cat <volume-mount-path>/<secret-name>
  ```
#### Reference

- https://docs.microsoft.com/en-us/azure/aks/csi-secrets-store-driver
- https://docs.microsoft.com/en-us/azure/aks/csi-secrets-store-identity-access
- https://docs.microsoft.com/en-us/azure/aks/use-azure-ad-pod-identity#create-an-identity
