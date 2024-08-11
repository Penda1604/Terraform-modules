provider "aws" {
    region = "us-east-1"
}
import {
  to = aws_instance.web
  id = "i-0307e0b2275b9f67d"
}