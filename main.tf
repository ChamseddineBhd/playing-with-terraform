terraform {
  cloud {
    organization = "ElasTech-Services"
    workspaces {
      name = "ElasTech-WebSite"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 1.1.0"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-3"
}

resource "aws_instance" "elastech-webserver1" {
  ami           = "ami-031eb8d942193d84f"
  instance_type = "t2.micro"
}
