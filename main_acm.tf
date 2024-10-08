module "certificate_manager" {
  source            = "git@github.com:filatov0120/terraform_modules.git//aws_certificate_manager?ref=v1.5.0"
  domain_name       = var.backend_domain_name
  validation_method = var.validation_method
  env               = var.env
  project_name      = var.project_name
}
