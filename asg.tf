
resource "aws_autoscaling_group" "asg" {
    name = "${aws_launch_configuration.lconfig.name}-asg form terraform"
    launch_configuration = aws_launch_configuration.lconfig.name
    vpc_zone_identifier = [aws_subnet.public.0.id,aws_subnet.public.1.id]
    min_size = var.min_size
    max_size = var.max_size
    desired_capacity = var.desired_capacity
    health_check_type = "ELB"
    
}

resource "aws_autoscaling_attachment" "asg_attach" {
    autoscaling_group_name = aws_autoscaling_group.asg.id
    alb_target_group_arn = aws_alb_target_group.tg.id
  
}

resource "aws_autoscaling_policy" "target_tracking" {
  name = "prod-web-cluster-target-tracking-policy"
  policy_type = "TargetTrackingScaling"
  autoscaling_group_name = aws_autoscaling_group.asg.name
  estimated_instance_warmup = 100

  target_tracking_configuration {
    predefined_metric_specification {
        predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = "70"
  }
}
