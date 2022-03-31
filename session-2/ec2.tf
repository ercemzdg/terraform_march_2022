resource "aws_instance" "first_ec2" {
  ami           = "ami-0c02fb55956c7d316" # in json we called key value in terraform we called it argument
  instance_type = "t2.micro"
  tags = {
    Name        = "ThefirstEC2instances"
    Environment = "dev"
  }
  security_groups = ["terraformserver-sg"]
  key_name        = "mac"
}



# argument: key and value, name and value 