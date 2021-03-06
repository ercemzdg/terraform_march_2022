resource "aws_security_group" "my_sg" {
  name        = "SecurityGroup"
  description = "This is a test security group"
  vpc_id      = aws_vpc.task_vpc.id
}

resource "aws_security_group_rule" "ingress_ssh" {
  type                  = "ingress" 
  from_port             = 22
  to_port               = 22
  protocol              = "tcp"
  cidr_blocks           = ["0.0.0.0/0"]           
  security_group_id = aws_security_group.my_sg.id 
}
resource "aws_security_group_rule" "egress" {
  type                  = "egress"
  from_port             = 0
  to_port               = 0
  protocol              = "-1"
  cidr_blocks           = ["0.0.0.0/0"]
  security_group_id = aws_security_group.my_sg.id
}