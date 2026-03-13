resource "aws_ecs_task_definition" "metadatamanagement_web" {
  count              = length(var.stages)
  family             = "metadatamanagement-${var.stages[count.index]}-web"
  execution_role_arn = aws_iam_role.mdm_task_execution_role.arn
  # grant this container the right to start other fargate tasks (e.g. report-task)
  task_role_arn            = aws_iam_role.mdm_task_execution_role.arn
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.container_cpu
  memory                   = var.container_memory
  container_definitions    = data.template_file.web_container[count.index].rendered
  volume {
    name = "tmp"
  }
}
