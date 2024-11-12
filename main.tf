terraform {
  // 자바의 import 와 비슷함
  // aws 라이브러리 불러옴
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# 환경설정... Configure the AWS Provider
//자바로 치면 클래스
provider "aws" {
  region = "ap-northeast-2"
}

//자바로 치면 객체 생성
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "example-1"
  }
}

# 객체 생성
# aws_vpc_example = aws_vpc new aws_vpc("10.0.0.0/16", "example")