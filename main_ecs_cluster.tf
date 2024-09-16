module "ecs-cluster" {
  source       = "git@github.com:filatov0120/terraform_modules.git//aws_ecs_cluster?ref=v1.5.0"
  env          = var.env
  project_name = var.project_name
}
