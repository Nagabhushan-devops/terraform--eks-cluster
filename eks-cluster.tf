resource "aws_eks_cluster" "my_cluser" {
  name     = "my-cluser"  # Replace with your desired cluster name
  role_arn = aws_iam_role.my_cluser_role.arn
  version  = "1.27"  # Replace with the desired Kubernetes version
vpc_config {
    subnet_ids = ["subnet-0bea3e648f1944b72", "subnet-030cf66c9708751ed"]  # Replace with your desired subnet IDs
    # Add additional VPC configuration options if needed
  }

  # Add additional EKS cluster configurations
}
