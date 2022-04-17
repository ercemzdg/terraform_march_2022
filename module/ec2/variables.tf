variable "ami" {
    type = string
    default = "This is AMI for my EC2 instance"

  
}
variable "instance_type" {
    type = string
    description = "This is a size of my EC2 instance"

  

}
variable "env"  {
    type = string
    description = "This represent the environment"
  
}
variable "project" {
  type = string
  description = "This is for tag"
}
variable "s3_bucket_name" {
    type = string
    description = "This is my application bucket"
  
}