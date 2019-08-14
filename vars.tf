variable "ami_image"  {
  default = "ami-b70554c8"
}

#variable "name" {
#  description = "Name of the Instance"
#  default = "Instance1"
#}

variable "security_groups" {
  default = "launch-wizard-3"
}

#variable "subnets" {
#  default = "subnet-170d265d"
#}

#variable "availability_zones" {
#  default = "us-east-1b"
#}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "ganesh"
}

#variable "vpc" {
#  default = "vpc-571eaa2d"
#}
