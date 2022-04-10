# resource "aws_instance" "vpc_ec2" {
#   ami           = var.ami    
#   instance_type = var.instance_type
#   count = 1
#   subnet_id = var.public_subnets_cidr[1].id
#   key
#   tags = {
#     Name = var.env
#   }
#   vpc_security_group_ids = [aws_security_group.my_sg.id]
# }
# # resource "aws_key_pair" "mackey" {
# #   key_name = mackey
# #   public_key = file("~/.ssh.id_rsa.pub")
# # }