resource "azuredevops_check_branch_control" "check_branch_controls" {
  for_each = var.check_branch_controls

  project_id                       = each.value.project_id
  target_resource_id               = each.value.target_resource_id
  target_resource_type             = each.value.target_resource_type
  allowed_branches                 = each.value.allowed_branches
  display_name                     = each.value.display_name
  ignore_unknown_protection_status = each.value.ignore_unknown_protection_status
  timeout                          = each.value.timeout
  verify_branch_protection         = each.value.verify_branch_protection

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

