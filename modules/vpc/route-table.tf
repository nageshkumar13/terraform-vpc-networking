resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "pub-routeTable"
  }
}

#create an association between the route table and public subnet

resource "aws_route_table_association" "routeAssoSub" {
  count                   = length(aws_subnet.public-subnet)
  subnet_id      = aws_subnet.public-subnet[count.index].id
  route_table_id = aws_route_table.public-route-table.id
}

#create private route table 

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.main.id

    route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-GW.id
  }

  tags = {
    Name = "pvt-routeTable"
  }
}

#create an association between the route table and private subnet

resource "aws_route_table_association" "routeAssoPvt" {
  count                   = length(aws_subnet.private_subnet)
  subnet_id      = aws_subnet.private_subnet[count.index].id
  route_table_id = aws_route_table.private_route_table.id
}


#create dB route table 

resource "aws_route_table" "dB_route_table" {
  vpc_id = aws_vpc.main.id

    route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-GW.id
  }

  tags = {
    Name = "db-routeTable"
  }
}


#create an association between the private route table and dB-subnet

resource "aws_route_table_association" "rT_dB_asso" {
  count                   = length(aws_subnet.dB_subnet)
  subnet_id      = aws_subnet.dB_subnet[count.index].id
  route_table_id = aws_route_table.dB_route_table.id
}