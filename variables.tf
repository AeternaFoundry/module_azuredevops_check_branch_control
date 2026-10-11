variable "check_branch_controls" {
  description = <<EOT
Map of check_branch_controls, attributes below
Required:
    - project_id
    - target_resource_id
    - target_resource_type
Optional:
    - allowed_branches
    - display_name
    - ignore_unknown_protection_status
    - timeout
    - verify_branch_protection
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    project_id                       = string
    target_resource_id               = string
    target_resource_type             = string
    allowed_branches                 = optional(string)
    display_name                     = optional(string)
    ignore_unknown_protection_status = optional(bool)
    timeout                          = optional(number)
    verify_branch_protection         = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

