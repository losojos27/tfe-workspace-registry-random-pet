terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

variable "pet_name_length" {
  type        = number
  description = "Number of words in pet name"
  default     = 2
}

variable "animal_name_length" {
  type        = number
  description = "Number of words in animal name"
  default     = 5
}

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
