
module "domain_phone" {
    source = "../../modules/analytics"
    domain_name = "This is the phone domains space"
    gcp_region = var.gcp_region
    # TODO: 
    # create_bronze = true
}

# TODO: add new domain, create bronze = false.

# TODO: create service account with write permission in bronze

# TODO: create service account that will be used to create dataproducts for a domain with 
# read in bronze, silver, gold and write in silver, gold.
# and bigquery.jobUser