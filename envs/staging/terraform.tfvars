
ami_id             = "ami-0886832e6b5c3b9e2" # Amazon Linux 2 AMI (change per region)
instance_type      = "t2.micro"
subnet_id          = "subnet-xxxxxxxx"        # replace
security_group_ids = ["sg-0d11469b96afa8aa9"] # replace
tags = {
  Project = "Playwright-Terraform"
  Owner   = "QETeam"
}
