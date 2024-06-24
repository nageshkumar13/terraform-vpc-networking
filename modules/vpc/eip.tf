resource "aws_eip" "m-eip" {
    depends_on = [aws_internet_gateway.gw]
}



