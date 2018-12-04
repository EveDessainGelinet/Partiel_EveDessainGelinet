# Create a Heroku pipeline
resource "heroku_pipeline" "test-app" {
  name = "pipeline-wsf-apps-partiel"
}

# Couple apps to different pipeline stages
resource "heroku_pipeline_coupling" "staging" {
  app      = "app-partiel-staging"
  pipeline = "${heroku_pipeline.test-app.id}"
  stage    = "staging"
}

resource "heroku_pipeline_coupling" "development" {
  app      = "app-partiel-development"
  pipeline = "${heroku_pipeline.test-app.id}"
  stage    = "development"
}

resource "heroku_pipeline_coupling" "production" {
  app      = "app-partiel-production"
  pipeline = "${heroku_pipeline.test-app.id}"
  stage    = "production"
}
