terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

provider "random" {
  # Configuration options
}

# ---- Module ----

module "m01" {
  source = "github.com/peepeepopapapeepeepo/terraform-multi-repo//modules/module-01"
}

module "m02" {
  source = "github.com/peepeepopapapeepeepo/terraform-multi-repo//modules/module-01"
}

module "m03" {
  source = "github.com/peepeepopapapeepeepo/terraform-multi-repo//modules/module-01"
}

# ---- Output ----

output "m01" {
  value = module.m01.ret
}

output "m02" {
  value = module.m02.ret
}

output "m03" {
  value = module.m03.ret
}