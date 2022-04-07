resource "aws_security_group" "my_sg" {
  name        = "SecurityGroupvpc"
  description = "This is a vpc security group"
  vpc_id      = "var.aws_vpc_task.vpc"
}

resource "aws_security_group_rule" "ingress_ssh" {
  type              = "ingress" 
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]               
}


resource "aws_security_group_rule" "egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]

}