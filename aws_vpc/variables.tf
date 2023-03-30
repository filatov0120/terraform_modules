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
  default     = ""
}

variable "env" {
  description = "Name of env"
  type        = string
  default     = ""
}

variable "proj_name" {
  description = "Name of project"
  type        = string
  default     = ""
}

variable "cidr_vpc" {
  description = "CIDR block for VPC"
  type        = string
  default     = ""
}

variable "public_subnet_cidr" {
  type        = string
  description = "Public Subnet CIDR values"
  default     = ""
}

variable "private_subnet_cidr" {
  type        = string
  description = "Private Subnet CIDR values"
  default     = ""
}

variable "vpc_tags" {
  description = "Common tags to apply to all resourses"
  type        = map(any)
  default = {
    Project     = ""
    Environment = ""
  }
}
