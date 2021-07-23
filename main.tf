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
# resource "ibm_cm_offering" "cm_offering2" {
#     catalog_id = ibm_cm_catalog.cm_catalog.id
#     label = "tf_test_offering2"
#     tags = var.string_array_no_type
#     test_int = var.int_no_type
#     test_float = var.float_no_type
#     test_bool = var.boolean_no_type
#     test_map = var.object_no_type
# }
