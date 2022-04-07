resource "aws_subnets" "subnet" {

    count  = length(var.subnets_cidr)                   
    vpc_id = aws_vpc.vpc.id

    cidr_block              = element(var.subnets_cidr , count.index) 
    availability_zone       = element(var.az_subnets , count.index)

    tags = {

        Name = ""
    }
}