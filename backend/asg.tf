locals {
  // use var for input parameters
  name_tag = "Name"
}

resource "aws_launch_configuration" "friyay_lc" {
  name_prefix     = "${var.project}-lc"
  image_id        = var.ami
  instance_type   = var.instance_type
  user_data       = var.user_data
  key_name        = var.key_name
  security_groups = var.security_groups

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "friyay_asg" {
  name_prefix          = "${var.project}-asg-"
  launch_configuration = aws_launch_configuration.friyay_lc.name
  availability_zones   = ["us-east-1a"]
  desired_capacity     = var.desired_instances
  max_size             = var.max_instances
  min_size             = var.min_instances
  vpc_zone_identifier  = var.subnets

  tags = [
    {
      key                 = local.name_tag
      value               = var.project
      propagate_at_launch = true
    }
  ]

  lifecycle {
    create_before_destroy = true
  }
}
