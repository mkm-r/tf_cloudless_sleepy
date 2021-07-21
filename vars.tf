# Configure these variables

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
  type = boolean
}

varaible "string_array_no_type" {
  default = ["a", "b", "c"] 
}

variable "boolean_no_type" {
  default = false
}

variable "object_array_no_type" {
 default = [{"a":1}, {"b":2}] 
}

variable "object_array_with_type" {
  type = list(object)
}

variable "object_with_type" {
  type = object
}

variable "object_no_type" {
  default = {"a":1}
}
