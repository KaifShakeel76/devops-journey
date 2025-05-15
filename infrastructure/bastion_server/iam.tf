resource "aws_iam_role" "bastion_role" {
  name = "bastion_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}


resource "aws_iam_policy" "bastion_policy" {
  name        = "bastion_policy"
  description = "Policy for EKS, ECR, RDS, and ELB access from bastion server"

  policy = file("iam_policy.json")
}

resource "aws_iam_role_policy_attachment" "attach_bastion_policy" {
  role       = aws_iam_role.bastion_role.name
  policy_arn = aws_iam_policy.bastion_policy.arn
}

resource "aws_iam_instance_profile" "bastion_instance_profile" {
  name = "bastion_instance_profile"
  role = aws_iam_role.bastion_role.name
}
