output "check_branch_controls_id" {
  description = "Map of id values across all check_branch_controls, keyed the same as var.check_branch_controls except keys with no id are omitted"
  value       = { for k, v in azuredevops_check_branch_control.check_branch_controls : k => v.id if v.id != null && length(v.id) > 0 }
}
output "check_branch_controls_allowed_branches" {
  description = "Map of allowed_branches values across all check_branch_controls, keyed the same as var.check_branch_controls except keys with no allowed_branches are omitted"
  value       = { for k, v in azuredevops_check_branch_control.check_branch_controls : k => v.allowed_branches if v.allowed_branches != null && length(v.allowed_branches) > 0 }
}
output "check_branch_controls_display_name" {
  description = "Map of display_name values across all check_branch_controls, keyed the same as var.check_branch_controls except keys with no display_name are omitted"
  value       = { for k, v in azuredevops_check_branch_control.check_branch_controls : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "check_branch_controls_ignore_unknown_protection_status" {
  description = "Map of ignore_unknown_protection_status values across all check_branch_controls, keyed the same as var.check_branch_controls except keys with no ignore_unknown_protection_status are omitted"
  value       = { for k, v in azuredevops_check_branch_control.check_branch_controls : k => v.ignore_unknown_protection_status if v.ignore_unknown_protection_status != null }
}
output "check_branch_controls_project_id" {
  description = "Map of project_id values across all check_branch_controls, keyed the same as var.check_branch_controls except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_check_branch_control.check_branch_controls : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "check_branch_controls_target_resource_id" {
  description = "Map of target_resource_id values across all check_branch_controls, keyed the same as var.check_branch_controls except keys with no target_resource_id are omitted"
  value       = { for k, v in azuredevops_check_branch_control.check_branch_controls : k => v.target_resource_id if v.target_resource_id != null && length(v.target_resource_id) > 0 }
}
output "check_branch_controls_target_resource_type" {
  description = "Map of target_resource_type values across all check_branch_controls, keyed the same as var.check_branch_controls except keys with no target_resource_type are omitted"
  value       = { for k, v in azuredevops_check_branch_control.check_branch_controls : k => v.target_resource_type if v.target_resource_type != null && length(v.target_resource_type) > 0 }
}
output "check_branch_controls_timeout" {
  description = "Map of timeout values across all check_branch_controls, keyed the same as var.check_branch_controls except keys with no timeout are omitted"
  value       = { for k, v in azuredevops_check_branch_control.check_branch_controls : k => v.timeout if v.timeout != null }
}
output "check_branch_controls_verify_branch_protection" {
  description = "Map of verify_branch_protection values across all check_branch_controls, keyed the same as var.check_branch_controls except keys with no verify_branch_protection are omitted"
  value       = { for k, v in azuredevops_check_branch_control.check_branch_controls : k => v.verify_branch_protection if v.verify_branch_protection != null }
}
output "check_branch_controls_version" {
  description = "Map of version values across all check_branch_controls, keyed the same as var.check_branch_controls except keys with no version are omitted"
  value       = { for k, v in azuredevops_check_branch_control.check_branch_controls : k => v.version if v.version != null }
}

