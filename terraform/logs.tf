# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "ecs_log_group" {
  name              = "/ecs/ecs-app"
  retention_in_days = 30

  tags = {
    Name = "ecs-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "ecs_log_stream" {
  name           = "ecs-log-stream"
  log_group_name = aws_cloudwatch_log_group.ecs_log_group.name
}

