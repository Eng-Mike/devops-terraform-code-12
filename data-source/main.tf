terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  
  region = "us-east-1"
}

# data "aws_instance" "ec21" {
#   instance_id = "i-095b850d38926a07b"
# }

resource "aws_instance" "demo" {
  ami = data.aws_ami.ec21.id
  instance_type = "t2.micro"
#   key_name = data.aws_instance.ec21.key_name
}
