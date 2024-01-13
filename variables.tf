#Write the variables for here
variable "app-region" {
  description = "The region in AWS where to deploy the resource"
  type = string
  default = "us-east-1"
}
variable "vpc_cidr" {
  type = string
  description = "The vpc address"
  default = "10.0.0.0/16"
}
variable "az2a" {
  description = "Availability zone"
  type = string
  default = "us-east-1a"
}

variable "sub1_cidr" {
  description = "The cidr bloc of subnet 1"
  type = string
  default = "10.0.0.0/24"
}
