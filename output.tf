output "ssh_key_name" {
  description = "Default SSH key name for EC2"
  value       = "${module.key-pair-default.key_name}"
}

output "iam_instance_profile" {
  description = "Default IAM instance profile for EC2"
  value       = "${module.ec2_iam_role_default.profile_name}"
}

