provider "aws" {
    region = "us-east-1"
  
}

/*resource "aws_instance" "server1" {
    count = 2
    ami = "ami-03972092c42e8c0ca"
    instance_type = "t2.micro"
    tags = {
      Name = "DEV-${count.index +1}"
    }
  
}
output "public_ip" {
    value = aws_instance.server1[0].public_ip
  
}
*/

/*locals {
  env = "dev"
}

output "v" {
    value = local.env
  
}
*/

/*resource "aws_iam_user" "n1" {
    count = 5
    name = "Terraform-${count.index +1}"
  
}
*/
variable "username" {
    type = list(string)
    default = ["ansible", "Devops", "dveloper"]

}

variable "instance_type" {
  default = ["t2.micro", "t2.small", "t2.medium"]

}
resource "aws_iam_user" "n1" {
  for_each = toset(var.username)
  name = each.key
}
resource "aws_instance" "Sv1" {
    for_each = toset(var.instance_type)
    ami = "ami-03972092c42e8c0ca"
    instance_type = each.key
  
}