resource "aws_vpc" "task_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "terraformvpc"
  }

}
resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.task_vpc.id
  count             = length(var.public_subnets_cidr)
  cidr_block        = element(var.public_subnets_cidr, count.index)
  availability_zone = element(var.az_subnets, count.index)
  tags = {
    Name = element(var.additional_tags, count.index)
  }


}
resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.task_vpc.id
  count             = length(var.private_subnets_cidr)
  cidr_block        = element(var.private_subnets_cidr, count.index)
  availability_zone = element(var.az_subnets, count.index)
  tags = {
    Name = element(var.additional_tags, count.index)
  }

}
