resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "the-IGW"
  }
}



#ref-https://www.youtube.com/watch?v=2ruztbokul4&list=PLjl2dJMjkDjnJgAUxw17bUpJE-KpxT3Xa&index=9