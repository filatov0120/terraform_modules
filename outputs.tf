output "avz" {
  value = data.aws_availability_zones.available.names
}

output "avz_ids" {
  value = data.aws_availability_zones.available.zone_ids
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "nat_eip" {
  value = module.vpc.nat_eip
}

output "rds_endpoint" {
  description = "Endpoint of the RDS instance"
  value       = module.rds_postgres.rds_endpoint
}

# output "server1_ip" {
#   value = module.server1.elastic_ip
# }
