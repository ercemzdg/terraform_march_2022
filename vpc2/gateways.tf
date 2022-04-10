resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.task_vpc.id
  tags = {
    Name = "internetgateway"
  }

}
resource "aws_eip" "eipnat" {
  vpc = true
  tags = {
    Name = "elasticip"
  }
}

resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.eipnat.id
  subnet_id = aws_subnet.public[0].id
  
  tags = {
    Name = "Natgateway"
  }
}
