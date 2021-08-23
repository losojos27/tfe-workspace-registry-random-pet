terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

module "pet" {
  source  = "app.terraform.io/lo-petgrackle/pet/random"
  version = "1.2.0"

  pet_name_length = var.pet_name_length
}

module "animal" {
  source  = "app.terraform.io/lo-petgrackle/pet/random"
  version = "1.2.0"

  animal_name_length = var.animal_name_length
}
