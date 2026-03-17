resource "aws_ecs_task_definition" "main" {
  family = "my-app"
  container_definitions = jsonencode([
    {
      name      = "my-container"
      image     = "nginx"
      environment = [
        {
          name  = "SECRET_KEY"
          value = "ecs-secret-value-here"
        }
      ]
    }
  ])
}
