terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source               = "./aws_vpc"
  nat_create           = var.nat_create
  azs                  = data.aws_availability_zones.available.names
  cidr_vpc             = var.cidr_vpc
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  project_name         = var.project_name
  env                  = var.env
}

# module "server1" {
#   source           = "./aws_instance"
#   depends_on       = [module.vpc]
#   ami              = var.ami_ubuntu_22_04
#   azs              = element(data.aws_availability_zones.available.names, 0)
#   instance_type    = "t3.micro"
#   root_block_size  = 10
#   root_volume_type = "gp3"
#   instance_profile = null
#   vpc_id           = module.vpc.vpc_id
#   cidr_vpc         = var.cidr_vpc
#   allow_tcp_ports  = [80, 443, 22]
#   allow_udp_ports  = []
#   start_tcp_ports  = []
#   end_tcp_ports    = []
#   start_udp_ports  = []
#   end_udp_ports    = []
#   subnet_id        = element(module.vpc.public_subnet_ids, 0)
#   ssh_key          = var.ssh_key
#   user_data        = file("test.sh")

#   project_name  = var.project_name
#   env           = var.env
#   instance_name = var.inst1_name
# }

# module "ebs_server1" {
#   source      = "./aws_ebs"
#   azs         = element(data.aws_availability_zones.available.names, 0)
#   size        = "10"
#   type        = "gp3"
#   instance_id = module.server1.instance_id
#   device_path = "/dev/sdh"

#   project_name  = var.project_name
#   env           = var.env
#   instance_name = var.inst1_name
# }
