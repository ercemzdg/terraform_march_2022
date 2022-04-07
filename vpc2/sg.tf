resource "aws_security_group" "vpc_sg" {
    name = "security group for vpc"
    description = "test for vpc task"
    vpc_id = aws_vpc.task_vpc.id
    ingress {
        description = "test"
        from_port = 22
        to_port = 22
        protocol = "ssh"
        cidr_blocks = ["0.0.0.0/16"]

    }
    egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }
tags = {
    Name = "testing"
}

}

  