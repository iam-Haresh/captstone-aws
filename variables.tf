variable "aws_region" {
  default = "us-east-1"
}

variable "key_name" {
  default = "aws_auth"
}

variable "ami_id" {
  default = "ami-0c7217cdde317cfec" # Ubuntu 22.04 LTS for us-east-1
}

variable "instance_type" {
  default = "t2.micro"
}
