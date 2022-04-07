resource "aws_route_table" "public" {
  vpc_id = aws_vpc.task_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }


}
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.task_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw.id

  }

}
resource "aws_route_table_association" "public"{
  subnet_id = aws_subnet.public[2].id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "private" {
  subnet_id = aws_subnet.private[2].id
  route_table_id = aws_route_table.private.id
}