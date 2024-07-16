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

output "ecr_url" {
  description = "The URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName)"
  value       = data.terraform_remote_state.shared.outputs.ecr_url
}

output "alb_dns" {
  description = "The DNS name of the load balancer"
  value       = module.load_balancer.lb_dns
}

output "amplify_default_domain" {
  description = "Default domain for the Amplify app"
  value       = module.amplify.frontend_default_domain
}

output "amplify_verification_dns_record" {
  description = "The DNS record for certificate verification"
  value       = module.amplify.frontend_certificate_verification_dns_record
}

output "amplify_cloud_front_dns_record" {
  description = "DNS record for the subdomain"
  value       = module.amplify.cloudfront_dns_record
}

output "iam_role_arn" {
  value = module.iam_role.iam_role_arn
}

output "Redis" {
  value = module.elasticache.cache_nodes
}
