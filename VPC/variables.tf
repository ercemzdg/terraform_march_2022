variable "region" {
    description = "This is for vpc region"
    type = string
    default = "us-east-1"
}
variable "vpc_cidr" {

    default = "10.0.0.0/16" 
}
variable "subnets_cidr" {

    type = list
    default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"] 
    }

    variable "az_subnets" {
    type = list
    default = ["us-east-1a", "us-east-1b", "us-east-1c"] 
    }