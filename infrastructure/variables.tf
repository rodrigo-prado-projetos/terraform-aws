variable "aws_region" {
  description = "Região da AWS"
  type        = string
}

variable "aws_profile" {
  description = "Perfil da AWS"
  type        = string
}

variable "aws_instance_type" {
  type = string
}

variable "aws_public_key" {
  type = string
}

variable "prefix" {
  description = ""
  type        = string
}