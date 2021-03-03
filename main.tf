terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "red"
  region  = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-096f43ef67d75e998"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
