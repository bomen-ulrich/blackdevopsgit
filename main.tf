#Write the main code definition here to create VPC - Subnets - ECR

# VPC definition
resource "aws_vpc" "ori_vpc" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = true
    enable_dns_support = true 
}

#Created  Subnet 1
resource "aws_subnet" "subnet1" {
    vpc_id = "${aws_vpc.ori_vpc.id}" #we specify on which VPC to create the subnet
    cidr_block = var.sub1_cidr #"10.0.0.0/24" #we specify the number of IP address available 
    availability_zone = var.az2a # var.dev_AZ1 # we specify the AZ where to create the subnet
    #availability_zone = data.aws_availability_zones.available.names[0]
    map_public_ip_on_launch = true
   
}
