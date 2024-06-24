# VPC Variables

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "instance_tenancy" {
    type        = string
    description = "Set instance_tenancy"
}

variable "enable_dns_hostnames" {
    type        = bool
    description = "weather to enable dns support or not"
}

variable "assign_generated_ipv6_cidr_block" {
    type        = bool
    description = "weather to assign ipv6 cidr block"
}

variable "vpc_tag_name" {
    type        = string
    description = "Name-tag of the vpc"
}

variable "public_subnet_cidr_block" {
    type        = list(any)
    description = "CIDR block of public subnet"
}

variable "private_subnet_cidr_block" {
    type        = list(any)
    description = "CIDR block for private subnet"
}


variable "map_public_ip_on_launch" {
    type        = bool
    description = "weather to map public ip on launch or not "
}

variable "dB_subnet_cidr_block" {
    type        = list(any)
    description = "CIDR block for private subnet"
}


