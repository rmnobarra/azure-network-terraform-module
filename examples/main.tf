module "network" {
  source    = "git::https://github.com/rmnobarra/azure-network-terraform-module.git?ref=v1.0.0"
  vnet_name           = "vnet"
  address_space       = ["10.11.0.0/16"]
  location            = "brazilsouth"
  resource_group_name = "develop"
  subnets = [
    {
      name           = "subnet_a"
      address_prefix = "10.11.1.0/24"
    },
    {
      name           = "subnet_b"
      address_prefix = "10.11.2.0/24"
    },
    {
      name           = "subnet_c"
      address_prefix = "10.11.3.0/24"
    }
  ]
}