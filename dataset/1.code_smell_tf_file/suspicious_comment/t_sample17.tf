resource "aws_ecs_service" "metadatamanagement_worker" {
  count   = length(var.stages)
  name    = "metadatamanagement-worker"
  cluster = aws_ecs_cluster.cluster[count.index].id
  # todo use test and prod task definitions
  task_definition = aws_ecs_task_definition.metadatamanagement_worker[count.index].arn
  desired_count   = 1

  network_configuration {
    security_groups  = [aws_security_group.ecs_web_tasks.id]
    subnets          = [aws_subnet.private_1.id, aws_subnet.private_2.id]
    assign_public_ip = false
  }

  # use spot instances on dev and test stage
  capacity_provider_strategy {
    capacity_provider = "FARGATE${count.index != 2 ? "_SPOT" : ""}"
    weight            = 1
    base              = 0
  }
}
