

resource "azurerm_resource_group" "example" {
    name = "trainings2030"
    location = "east us"
}

resource "azurerm_virtual_network" "example" {
    name = "vnet1"
    address_space = [ 10.0.0.5/16]
    location = azurerm_resource_group.example.location
    resouresource_group_name = azurerm_resource_group.example.name

}
resource "azurerm_virtual_machine" "example" {
    name = mylinuxvm
    resource_group_name = azurerm_linux_virtual_machine.example
  
}