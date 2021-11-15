resource "aws_codedeploy_deployment_group" "deploygorup" {
  app_name = aws_codedeploy_app.deployapp.name
  deployment_group_name = "angular-deploy-group"
  service_role_arn = aws_iam_role.codedeploy-access.arn

  auto_rollback_configuration {
    enabled = true
    events = ["DEPLOYMENT_FAILURE"]
  }
  load_balancer_info {
    target_group_info {
      name = aws_alb_target_group.tg.name
    }
  }
  deployment_style {
    deployment_option = "WITH_TRAFFIC_CONTROL"
    deployment_type = "IN_PLACE"
  }
  autoscaling_groups = [aws_autoscaling_group.asg.id]

}