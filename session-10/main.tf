// 1. Terraform Registry
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.0"

// Variables 
  name = "aws-session-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a","us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
module "s3" {
  source = "github.com/ercemzdg/terraform_march_2022/module/s3"
  env = "dev"
}