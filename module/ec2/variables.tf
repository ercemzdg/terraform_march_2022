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