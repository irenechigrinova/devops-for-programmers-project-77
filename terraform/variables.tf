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