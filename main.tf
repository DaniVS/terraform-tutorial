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
  region  = var.default_region
}

resource "aws_instance" "example" {
  ami           = "ami-0d94cb8577ea0e2fd"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
