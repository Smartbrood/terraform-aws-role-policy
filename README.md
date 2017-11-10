terraform-aws-role-policy
=========================

Terraform module/role (role means that module contains other modules) to create some default policy resources.


Usage
-----

```hcl
module "policy" {
    source              = "Smartbrood/role-policy/aws"
    iam_role_name       = "ec2_iam_role_default"
    iam_role_policy_arn = [
        "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess",
        "arn:aws:iam::aws:policy/CloudWatchReadOnlyAccess",
    ]

    ssh_public_key_path = "~/.ssh/id_rsa.pub"
}

output "ssh_key_name" {
  value       = "${module.policy.ssh_key_name}"
}

output "iam_instance_profile" {
  value       = "${module.policy.iam_instance_profile}"
}
```


Authors
-------

Module managed by [Smartbrood LLC](https://github.com/Smartbrood).


License
-------

Apache 2 Licensed. See LICENSE for full details.
