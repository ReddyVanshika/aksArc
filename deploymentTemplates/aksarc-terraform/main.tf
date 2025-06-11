resource "azurerm_kubernetes_cluster" "k8s" {
  location            = var.location
  name                = var.cluster_name
  resource_group_name = var.resource_group_name
  dns_prefix = "test"
  
  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name       = var.agent_name
    vm_size    = var.agent_VMsize
    node_count = var.agent_count
    os_disk_type = var.agent_OStype
    node_labels = var.nodepoolLabel
    
  }
  linux_profile {
    admin_username = var.username

    ssh_key {
      key_data = var.ssh_key
    }
  }
  network_profile {
    network_plugin    = "kubenet"
    load_balancer_sku = "standard"
  }
  
}