terraform {
  required_providers {
    ibm = {
      source = "jonwoodlief/catalog"
      version = "0.0.100"
      #source = "IBM-Cloud/ibm"
      #version = "1.27.1"
    }
  }
}
# Configure the IBM Provider
provider "ibm" {
  region = "us-south"
}
