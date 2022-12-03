resource "aws_security_group" "sg-ssh-http" {
  name   = "${local.prefix}-sg-ssh-http"
  vpc_id = aws_vpc.this.id
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 8080
    protocol    = "tcp"
    to_port     = 8080
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

    ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 2049
    protocol    = "tcp"
    to_port     = 2049
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = local.common_tags
}