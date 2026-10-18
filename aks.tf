resource "azurerm_kubernetes_cluster" "lab" {
  name                = "aks-suraj-lab"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "aks-suraj-lab"
  sku_tier            = "Free"

  default_node_pool {
    name            = "system"
    node_count      = 2
    vm_size         = "Standard_D4s_v3"
    zones           = ["1"]
    os_disk_type    = "Managed"
    os_disk_size_gb = 32
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin      = "azure"
    network_plugin_mode = "overlay"
    load_balancer_sku   = "standard"
    outbound_type       = "loadBalancer"
  }
}