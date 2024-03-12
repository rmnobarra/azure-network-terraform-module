module "network" {
  source    = "git::https://github.com/rmnobarra/azure-network-terraform-module.git?ref=v1.0.0"
  vnet_name           = "vnet"
  address_space       = ["10.10.0.0/16"]
  location            = "westus3"
  resource_group_name = "meu-grupo-de-recursos"
  subnets = [
    {
      name           = "subnet_a"
      address_prefix = "10.10.1.0/24"
    },
    {
      name           = "subnet_b"
      address_prefix = "10.10.2.0/24"
    },
    {
      name           = "subnet_c"
      address_prefix = "10.10.3.0/24"
    }
  ]
}