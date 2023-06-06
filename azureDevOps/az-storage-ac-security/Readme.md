# Azure Storage Account Security

## Checklist

- Enable Azure Defender for all your storage accounts.
- Turn on soft delete for blob data.
- Use Azure AD to authorize access to blob data.
- Consider the principle of least privilege when you assign permissions to an Azure AD security principal through Azure RBAC.
- Use managed identities to access blob and queue data.
- Use blob versioning or immutable blobs to store business-critical data.
- Restrict default internet access for storage accounts.
- Enable firewall rules.
- Limit network access to specific networks.
- Allow trusted Microsoft services to access the storage account.
- Enable the Secure transfer required option on all your storage accounts.
- Limit shared access signature (SAS) tokens to HTTPS connections only.
- Avoid and prevent using Shared Key authorization to access storage accounts.
- Regenerate your account keys periodically.
- Create a revocation plan and have it in place for any SAS that you issue to clients.
- Use near-term expiration times on an impromptu SAS, service SAS, or account SAS.

For more details : https://docs.microsoft.com/en-us/azure/architecture/framework/services/storage/storage-accounts/security
