resource "aws_vpc" "task_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "terraformvpc"
    }
  
}
resource "aws_subnet" "public" {
    vpc_id = aws_vpc.task_vpc.id
    cidr_block = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
    tags = {
        Name = "public_subnet"
    }


}
resource "aws_subnet" "private" {
    vpc_id = aws_vpc.task_vpc.id
    cidr_block = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
    tags = {
        Name = "private_subnet"
    }
  
}
