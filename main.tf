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
  default     = 3
}

variable "animal_name_length" {
  type        = number
  description = "Number of words in animal name"
  default     = 6
}

module "pet" {
  source  = "app.terraform.io/gekk0/pet/random"
  version = "1.0.0"

  pet_name_length = var.pet_name_length
}

module "animal" {
  source  = "app.terraform.io/gekk0/pet/random"
  version = "1.0.0"

  pet_name_length = var.animal_name_length
}
