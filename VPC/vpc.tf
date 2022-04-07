resource "aws_vpc_task" "vpc" {

    cidr_block = var.vpc_cidr


    tags = {

        Name = "my_custom_vpc"
    }

}
