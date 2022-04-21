resource "aws_sqs_queue" "main" {
 name = "${terraform.workspace}-sqs" 
}
variable "env" {
  type = string 
  }