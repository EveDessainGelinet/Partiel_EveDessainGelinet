resource "heroku_app" "staging" {
  name   = "app-partiel-staging"
  region = "eu"
   buildpacks = [
    "heroku/go",
  ]
}
 resource "heroku_app" "production" {
  name   = "app-partiel-production"
  region = "eu"
   buildpacks = [
    "heroku/go",
  ]
}

resource "heroku_app" "development" {
  name   = "app-partiel-development-"
  region = "eu"

  buildpacks = [
    "heroku/go",
  ]
}