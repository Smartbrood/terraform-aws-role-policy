module "key-pair-default" {
    source          = "Smartbrood/key-pair/aws"
    key_name_prefix = "${var.ssh_key_name_prefix}"
    public_key_path = "${var.ssh_public_key_path}"
}

module "ec2_iam_role_default" {
   source      = "Smartbrood/ec2-iam-role/aws"

   name        = "${var.iam_role_name}"
   policy_arn  = "${var.iam_role_policy_arn}"

   path        = "${var.iam_role_path}"
   description = "${var.iam_role_description}"

   force_detach_policies = "${var.iam_role_force_detach_policies}"
}
