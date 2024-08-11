provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "server2" {
    ami =  "ami-0ae8f15ae66fe8cda"
    instance_type = "t2.micro"
    lifecycle {
      create_before_destroy = true
    }
}
/*resource "aws_iam_user" "user1" {
    name = "developer24"
  
}
*/