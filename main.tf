resource "ibm_cm_catalog" "cm_catalog" {
    label = "tf_test_offering_catalog"
    short_description = "testing terraform provider with catalog"
}
resource "ibm_cm_offering" "cm_offering1" {
    catalog_id = ibm_cm_catalog.cm_catalog.id
    label = "tf_test_offering"
    tags = var.string_array_with_type
    test_int = var.int_with_type
    test_float = var.float_with_type
    test_bool = var.boolean_with_type
    test_map = var.object_with_type
}

output "resource_cloud" {
  value = {

    "is_resource" = "true"

    "resource_controller_url" = ""

    "resource_icon_url" = "https://globalcatalog.test.cloud.ibm.com/api/v1/1082e7d2-5e2f-0a11-a3bc-f88a8e1931fc/artifacts/cache/8c6189a76c7d346f6e807aaffb3bf643-public/terraform.svg"

    "resource_id" = "b636d651-8489-4425-bd6a-f30af1603577.f054506e-a53b-402c-a948-b2f43f3560d1"

    "resource_name" = "itemname"

  }
}

# resource "ibm_cm_offering" "cm_offering2" {
#     catalog_id = ibm_cm_catalog.cm_catalog.id
#     label = "tf_test_offering2"
#     tags = var.string_array_no_type
#     test_int = var.int_no_type
#     test_float = var.float_no_type
#     test_bool = var.boolean_no_type
#     test_map = var.object_no_type
# }
