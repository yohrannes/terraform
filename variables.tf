variable "image_id" {
    default = "ami-12345678" ## valor default caso nao especifique nada
    type = string   
    description = "The id of the machine image (AMI) to use for the server."
    
    validation {
    condition     = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
}