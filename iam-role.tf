resource "aws_iam_role" "my_cluser_role" {
  name = "my-cluser-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

}
resource "aws_iam_role_policy_attachment" "my_cluser_role_attachment" {
  role       = aws_iam_role.my_cluser_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}
