resource "aws_iam_role_policy_attachment" "ecs_task_admin_attachment" {
  role       = "ecs-task-execution-role"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
