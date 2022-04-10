variable "region" {
  description = "This is for vpc region"
  type        = string
  default     = "us-east-1"
}

variable "public_subnets_cidr" {

  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnets_cidr" {

  type    = list(string)
  default = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
}

variable "az_subnets" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
variable "additional_tags" {

  type    = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

