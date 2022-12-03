resource "aws_efs_file_system" "efs-example" {
  creation_token   = "efs-trabalho-final-devops"
  performance_mode = "generalPurpose"
  throughput_mode  = "bursting"
  encrypted        = "true"
  tags = {
    Name = "TrabalhoFinalDevops"
  }
}

resource "aws_efs_mount_target" "efs-mt-example" {
  file_system_id  = aws_efs_file_system.efs-example.id
  subnet_id       = aws_subnet.this.id
  security_groups = ["${aws_security_group.sg-ssh-http.id}"]
}