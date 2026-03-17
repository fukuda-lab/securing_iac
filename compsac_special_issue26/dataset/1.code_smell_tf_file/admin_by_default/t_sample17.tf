resource "aws_iam_role" "ec2_admin_role" {
  name = "ec2-admin-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "ec2_admin_attachment" {
  role       = aws_iam_role.ec2_admin_role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_instance_profile" "admin_profile" {
  name = "admin-instance-profile"
  role = aws_iam_role.ec2_admin_role.name
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Example AMI
  instance_type = "t2.micro"

  iam_instance_profile = aws_iam_instance_profile.admin_profile.name
}
