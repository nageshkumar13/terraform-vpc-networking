module "vpc" {
  source                             = "../../modules/vpc"

  vpc_cidr_block                   =          "10.0.0.0/16"
  instance_tenancy                 =          "default"
  enable_dns_hostnames             =          true 
  assign_generated_ipv6_cidr_block =          true
  vpc_tag_name                     =          "Matrix"
  public_subnet_cidr_block         =          ["10.0.1.0/24", "10.0.3.0/24"]
  private_subnet_cidr_block        =          ["10.0.2.0/24", "10.0.4.0/24"]
  dB_subnet_cidr_block             =          ["10.0.6.0/24"]
  map_public_ip_on_launch          =          false

}


