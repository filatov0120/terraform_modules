module "task-definition" {
  source                  = "git@github.com:filatov0120/terraform_modules.git//aws_task_definition?ref=v1.3.0"
  region                  = var.region
  task_name               = var.task_name
  environment_variables   = var.backend_environment_variables
  cpu                     = var.cpu
  memory                  = var.memory
  image                   = data.terraform_remote_state.shared.outputs.ecr_url
  ecs_task_execution_role = aws_iam_role.test_role.arn
  task_role_arn           = ""
}