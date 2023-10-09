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

  backend "s3" {
    endpoint          = "storage.yandexcloud.net"
    region            = "ru-central1"
    key               = "yc-terraform-state-remote"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  zone = "ru-central1-a"
  token = var.yc_token
  folder_id = var.folder_id
}

#provider "datadog" {
#  api_key = var.dd_api_key
#  app_key = var.dd_app_key
#}

