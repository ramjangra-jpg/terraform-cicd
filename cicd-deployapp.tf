resource "aws_codedeploy_app" "deployapp" {
  compute_platform = "Server"
  name = var.app_name
}