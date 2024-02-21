provider "azurerm" {
  features {

  }
}

variable "location" {
  type        = string
  description = "Localizacao dos Recursos do azure. Ex: brazilsouth"
  default     = "eastus"
}

resource "azurerm_resource_group" "grupo_recurso" {
  name     = "rg-terraform"
  location = var.location #"brazilsouth"
}
