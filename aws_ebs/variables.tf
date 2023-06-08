variable "azs" {
    description = "Availability Zones list"
    default     = ""  
}

variable "type" {
  description = "Type of storage"  
}

variable "size" {
    description = "Storage size"
}

variable "proj_name" {
  description = "Name of project"
  type        = string
  default     = ""
}

variable "common_tags" {
  description = "Common tags to apply resourses"
  type        = map(any)
  default = {
    Name        = ""
    Project     = ""
    Environment = ""
  }
}