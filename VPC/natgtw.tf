resource "aws_nat_gateway" "example"  {
  subnet_id     = private_subnets_cidr
  connectivity_type = "private"
  tags = {
    Name = "gw NAT"
  }
}