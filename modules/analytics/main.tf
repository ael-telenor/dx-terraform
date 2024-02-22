
resource "google_bigquery_dataset" "bronze" {
  dataset_id                  = "${var.domain_name}_bronze"
  friendly_name               = "${var.domain_name}_bronze"
  description                 = "This is the ${var.domain_name} staging zone, only intended for RAW/Bronze data."
  location                    = var.gcp_region
  labels = ["bronze"]
}

resource "google_bigquery_dataset" "silver" {
  dataset_id                  = "${var.domain_name}_silver"
  friendly_name               = "${var.domain_name}_silver"
  description                 = "This is the ${var.domain_name} silver dataset."
  location                    = var.gcp_region
  labels = ["silver"]
}

## TODO: add gold dataset.