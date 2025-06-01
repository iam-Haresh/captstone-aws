variable "ami_id" {}
variable "instance_type" {}
variable "subnet_ids" {
  type = list(string)
}
variable "sg_id" {}
variable "key_name" {}
