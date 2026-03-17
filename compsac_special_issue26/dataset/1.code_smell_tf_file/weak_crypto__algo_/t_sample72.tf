resource "aws_ecs_task_definition" "backend_service_task_def" {
  family                = "backend-api-service"
  container_definitions = jsonencode([
    {
      name      = "api-container"
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
