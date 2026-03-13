resource "aws_ecs_task_definition" "weak_container_secret" {
  family                = "my-app"
  container_definitions = jsonencode([
    {
      name      = "my-container"
      image     = "my-app:latest"
      environment = [
        {
          name  = "SECRET_TOKEN_HASH"
          value = md5(var.api_key_seed)
        }
      ]
    }
  ])
}
