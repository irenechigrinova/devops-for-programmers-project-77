terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
    #datadog = {
    #  source = "DataDog/datadog"
    #}
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  zone      = "ru-central1-a"
  token     = var.yc_token
  folder_id = var.folder_id
}

#provider "datadog" {
#  api_key = var.dd_api_key
#  app_key = var.dd_app_key
#}

