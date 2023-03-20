variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "azs" {
  type        = string
  description = "Availability Zones list"
  default     = "us-east-1a"
}

variable "app_name" {
  description = "Application name"
  default     = "blaize_app"
}

variable "env" {
  description = "Name of env"
  type        = string
  default     = "DEV"
}

variable "proj_name" {
  description = "Name of project"
  type        = string
  default     = "OMOMO"
}

variable "common_tags" {
  description = "Common tags to apply to all resourses"
  type        = map(any)
  default = {
    Project     = "OMOMO"
    Environment = "DEV"
  }
}

variable "cidr_vpc" {
  description = "CIDR block for VPC"
  type        = string
  default     = "192.168.0.0/16"
}

variable "public_subnet_cidr" {
  type        = string
  description = "Public Subnet CIDR values"
  default     = "192.168.11.0/24"
}

variable "private_subnet_cidr" {
  type        = string
  description = "Private Subnet CIDR values"
  default     = "192.168.21.0/24"
}

variable "allow_ports" {
  description = "List of ports to open for server"
  type        = list(any)
  default = [
    "80",
    "443",
    "22"
  ]
}
