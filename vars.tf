# Configure these variables

variable "TF_VERSION" {
  default = "0.14"
  description = "terraform engine version to be used in schematics"
}

variable "sample_var" {
  description = "A sample_var to pass to the template."
  default     = "hello"
}

variable "sleepy_time" {
  description = "How long our local-exec will take a nap."
  default     = 0
}

variable "string_array_with_type" {
  type = list(string)
}

variable "boolean_with_type" {
  type = bool
}

variable "int_with_type" {
  type = number
}

variable "float_with_type" {
  type = number
}

# variable "object_array_with_type" {
#   type = list(object({
#               foo = string
#   }))
# }

variable "object_with_type" {
  type = object({foo = string})
  default = {foo:"bar"}
}

variable "string_array_no_type" {
  default = ["a", "b", "c"] 
}

variable "boolean_no_type" {
  default = false
}

variable "int_no_type" {
  default = 1
}

variable "float_no_type" {
  default = 1.1
}

# variable "object_array_no_type" {
#  default = [{"foo":"bar"}, {"foo":"baz"}] 
# }

# variable "object_no_type" {
#   default = {"foo":"bar"}
# }

variable "string_array_with_type_and_default_1" {
  type = list(string)
  default = ["a", "b", "c"]
}

# variable "string_array_with_type_and_default_2" {
#   type = list(string)
#   default = [
#     "a", 
#     "b", 
#     "c"
#   ]
# }

variable "boolean_with_type_and_default" {
  type = bool
  default = true
}

variable "int_with_type_and_default" {
  type = number
  default = 200
}

variable "float_with_type_and_default" {
  type = number
  default = 200.100
}

# variable "object_array_with_type_and_default_1" {
#   type = list(object({
#               foo = string
#   }))
#   default = [{"foo"="bar"}]
# }

# variable "object_array_with_type_and_default_2" {
#   type = list(object({
#               foo = string
#   }))
#   default = [
#     {foo="bar"}
#   ]
# }

variable "object_with_type_and_default_1" {
  type = object({foo = string})
  default = {foo="bar"}
}

# variable "object_with_type_and_default_2" {
#   type = object({
#     foo = string
#   })
#   default = {
#     foo="bar"
#   }
# }
