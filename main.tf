terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 3.84"
    }
  }
}

resource "google_project_iam_binding" "sample_iam_binding" {
  project = "prj-sandbox-devops-9999"
  role    = "roles/viewer"

  members = [
    "user:lswoo@wemakeprice.com"
  ]
}
