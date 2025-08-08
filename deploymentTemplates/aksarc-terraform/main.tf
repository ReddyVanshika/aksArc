module "aks_arc" { 
# Make sure to use the latest AVM module version
source = "Azure/avm-res-hybridcontainerservice-provisionedclusterinstance/azurerm" 
version = "~>2.0"

# Make sure to provide all required parameters  
resource_group_id = "<Resource_Group>"
location = "<Location>" 
name = "<name>" 
logical_network_id = "<LNet_ID>" 
custom_location_id = "<CustomLocation_ID>" 
agent_pool_profiles = [{count=1}] 
ssh_public_key =  "Your_SSH_Key"

# Optional parameters, update them as needed
enable_azure_rbac = false
enable_workload_identity = false 
enable_oidc_issuer = false
}
