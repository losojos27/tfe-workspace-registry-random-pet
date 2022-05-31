module "pet" {
  source  = "app.terraform.io/lo-petgrackle/pet/random"
  version = "1.2.1"

  pet_name_length = var.pet_name_length
}

module "animal" {
  source  = "app.terraform.io/lo-petgrackle/pet/random"
  version = "1.2.1"

  pet_name_length = var.animal_name_length
}
