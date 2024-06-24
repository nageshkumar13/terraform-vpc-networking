#Public subnet 
resource "aws_subnet" "public-subnet" {
  count                   = length(var.private_subnet_cidr_block)
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr_block[count.index]
  map_public_ip_on_launch = true
  availability_zone       = local.list_of_azs[count.index]  
  tags = {
    Name = "public-SN"
  }
}

#Private Subnet 
resource "aws_subnet" "private_subnet" {
  count                   = length(var.private_subnet_cidr_block)
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.private_subnet_cidr_block[count.index]
  map_public_ip_on_launch = var.map_public_ip_on_launch
  availability_zone       = local.list_of_azs[count.index]  
  tags = {
    Name = "private-SN"
  }
}

#dB Subnet 
resource "aws_subnet" "dB_subnet" {
  count                   = length(var.dB_subnet_cidr_block)
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.dB_subnet_cidr_block[count.index]
  map_public_ip_on_launch = var.map_public_ip_on_launch
  availability_zone       = local.list_of_azs[count.index]  
  tags = {
    Name = "dB-SN"
  }
}
