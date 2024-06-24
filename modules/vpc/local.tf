data "aws_availability_zones" "available" {}

locals {
  list_of_azs = data.aws_availability_zones.available.names

  total_azs = length(data.aws_availability_zones.available.names)
  used_azs  = 2   #local.total_azs > 3 ? 3 : local.total_azs
}
