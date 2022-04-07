resource "aws_route_table_association" "a" {

    count          = length(var.subnets_cidr)
    subnet_id      = element(aws_subnet.subnet.*.id , count.index)
    route_table_id = aws_route_table.rt.id

}