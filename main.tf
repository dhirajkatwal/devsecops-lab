terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

provider "random" {}

resource "random_pet" "dev_name" {
  length = 2
}

output "generated_name" {
  value = random_pet.dev_name.id
}
