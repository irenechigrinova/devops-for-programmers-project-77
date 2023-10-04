variable "yc_token" {
    description = "yandex oauth token"
    type = string
    sensitive = true
}

variable "folder_id" {
    description = "cloud folder id"
    type = string
    sensitive = true
}

variable "image_id" {
    description = "os image id in yandex"
    type = string
}

variable "app_port" {
    type = number
    default = 3000
}

variable "db_name" {
    description = "database name"
    type = string
    sensitive = true
}

variable "db_user" {
    description = "database user"
    type = string
    sensitive = true
}

variable "db_password" {
    description = "database password"
    type = string
    sensitive = true
}

variable "dd_api_key" {
    description = "datadog api key"
    type = string
    sensitive = true
}

variable "dd_app_key" {
    description = "datadog app key"
    type = string
    sensitive = true
}