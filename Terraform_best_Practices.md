# Terraform Best Practices

A curated list of real-world Terraform best practices to help you write clean, scalable, and production-ready infrastructure code.

---

## ✅ 1. Use Remote State with Locking

Store your `terraform.tfstate` remotely using S3 and enable state locking with DynamoDB.

```hcl
backend "s3" {
  bucket         = "tf-prod-state"
  key            = "network/vpc.tfstate"
  region         = "us-east-1"
  dynamodb_table = "tf-locks"
  encrypt        = true
}
```

---

## ✅ 2. Modularize Everything

Break your infrastructure into reusable modules:

```
/modules
  ├── vpc/
  ├── ec2/
  └── rds/
```

Keep your root configs clean and your modules testable.

---

## ✅ 3. Avoid Over-Variable-ization

Use `variables` only for inputs and `locals` for internal logic.

```hcl
locals {
  env = "prod"
  tags = {
    Environment = local.env
    Owner       = "DevOps"
  }
}
```

---

## ✅ 4. Never Define `provider` in Modules

Define providers only in the root module and pass them explicitly.

```hcl
module "vpc" {
  source    = "./modules/vpc"
  providers = {
    aws = aws
  }
}
```

---

## ✅ 5. Lock Provider Versions

Prevent unexpected breaking changes by locking your provider versions.

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
```

---

## ✅ 6. Separate Environments

Use `terraform.workspace` for lightweight env switching or create separate folders (`/envs/dev`, `/envs/prod`) for larger teams.

---

## ✅ 7. Use Consistent Resource Naming

Use a structured naming convention:

```hcl
resource "aws_vpc" "main" {
  name = "${var.project}-${var.env}-vpc"
}
```

---

## ✅ 8. Format & Validate Your Code

Use:

```bash
terraform fmt -recursive
terraform validate
```

Add them to pre-commit hooks or CI pipelines.

---

## ✅ 9. Use `.terraform.lock.hcl`

Track exact provider versions with the lock file to ensure reproducibility across environments.

---

## ✅ 10. Document with `terraform-docs`

Use [terraform-docs](https://github.com/terraform-docs/terraform-docs) to auto-generate module documentation and improve collaboration.

---

### Bonus Tip

Keep Terraform workflows simple, composable, and scalable. Always think in terms of environment parity, automation, and reusability.

---

**📌 Repo Maintained by:** \[KaifShakeel76]
**🔗 Feedback & contributions welcome!**

