provider "heroku" {
  email   = "${var.heroku_email}"
  api_key = "${var.heroku_key}"
}

variable "heroku_key" {
  type = "string"
}

variable "heroku_email" {
  type = "string"
}
