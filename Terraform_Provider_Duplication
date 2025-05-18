# Fixing Terraform Provider Duplication with Workspaces

## Problem

In large Terraform setups, provider duplication is a common issue. It usually happens when multiple modules declare their own `provider` block. This can lead to:

* Inconsistent provider configurations
* Errors when switching environments
* Painful debugging and lack of clarity

## Root Cause

Each module that declares its own provider creates a separate instance of it. If those configurations are even slightly different (e.g., different regions or credentials), Terraform treats them as separate entities.

## Solution

Use a shared provider configuration at the root module level and pass it explicitly to each child module.

```hcl
# root/main.tf
provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source   = "./modules/vpc"
  providers = {
    aws = aws
  }
  ...
}
```

Avoid placing a `provider` block inside modules unless absolutely necessary.

## Bonus: Use `terraform.workspace` to manage environments

Workspaces let you isolate state files logically, ideal for staging, dev, and prod environments.

```hcl
provider "aws" {
  region = terraform.workspace == "prod" ? "us-east-1" : "us-west-2"
}
```

## Reusable Setup

Structure your repo like this:

```
/infra
  ├── main.tf
  ├── variables.tf
  ├── backend.tf
  └── modules/
        └── vpc/
            ├── main.tf
            └── variables.tf
```

Declare all providers at the root. Pass them down via the `providers` argument in each module.

## TL;DR

* Declare providers at the root only
* Pass them explicitly to modules
* Use `terraform.workspace` for clean env handling
* Avoid duplication: it’s not DRY and breaks scale

🛠️ [Github example Repo](https://github.com/KaifShakeel76/devops-journey.git)

