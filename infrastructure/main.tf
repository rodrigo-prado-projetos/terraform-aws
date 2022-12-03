locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    ManageBy    = "Terraform"
    Department  = "systems"
    Provider    = ""
    Owner       = ""
    Billing     = ""
    Environment = ""
    UserEmail   = ""
  }
}