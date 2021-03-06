# Terraform Local module which consists of Child and Root modules
module "ec2" {
  source = "../../module/ec2/" #Local or Remote, when its a local module , you provide a path of child module
  ami = "ami-04a50faf2a2ec1901"
  instance_type = "t2.micro"
  env = "dev"
  project = "app-1"
  s3_bucket_name = module.s3.s3_bucket_name
}
module "s3" {
  source = "../../module/s3"
  env = "dev"
}