module "iam_user" {
  source       = "git@github.com:filatov0120/terraform_modules.git//main_iam_user?ref=v1.3.0"
  username     = var.iam_user
  env          = var.env
  project_name = var.project_name
}
