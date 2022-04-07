variable "env" {
  type        = string
  description = "This variable represents an environment"
  default     = "dev"
}

variable "ami" {
  type        = string
  description = "Image ID for EC2 Instance"
  default     = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  type        = string
  description = "Capacity"
  default     = "t2.micro"
}
