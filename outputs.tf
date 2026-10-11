output "identity_domains_settings_id" {
  description = "Map of id values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no id are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_domains_settings_account_always_trust_scope" {
  description = "Map of account_always_trust_scope values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no account_always_trust_scope are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.account_always_trust_scope if v.account_always_trust_scope != null }
}
output "identity_domains_settings_allowed_domains" {
  description = "Map of allowed_domains values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no allowed_domains are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.allowed_domains if v.allowed_domains != null && length(v.allowed_domains) > 0 }
}
output "identity_domains_settings_allowed_forgot_password_flow_return_urls" {
  description = "Map of allowed_forgot_password_flow_return_urls values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no allowed_forgot_password_flow_return_urls are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.allowed_forgot_password_flow_return_urls if v.allowed_forgot_password_flow_return_urls != null && length(v.allowed_forgot_password_flow_return_urls) > 0 }
  sensitive   = true
}
output "identity_domains_settings_allowed_notification_redirect_urls" {
  description = "Map of allowed_notification_redirect_urls values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no allowed_notification_redirect_urls are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.allowed_notification_redirect_urls if v.allowed_notification_redirect_urls != null && length(v.allowed_notification_redirect_urls) > 0 }
}
output "identity_domains_settings_attribute_sets" {
  description = "Map of attribute_sets values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no attribute_sets are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.attribute_sets if v.attribute_sets != null && length(v.attribute_sets) > 0 }
}
output "identity_domains_settings_attributes" {
  description = "Map of attributes values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no attributes are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.attributes if v.attributes != null && length(v.attributes) > 0 }
}
output "identity_domains_settings_audit_event_retention_period" {
  description = "Map of audit_event_retention_period values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no audit_event_retention_period are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.audit_event_retention_period if v.audit_event_retention_period != null }
}
output "identity_domains_settings_authorization" {
  description = "Map of authorization values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no authorization are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.authorization if v.authorization != null && length(v.authorization) > 0 }
}
output "identity_domains_settings_certificate_validation" {
  description = "Map of certificate_validation values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no certificate_validation are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => one(v.certificate_validation) if v.certificate_validation != null && length(v.certificate_validation) > 0 }
}
output "identity_domains_settings_cloud_account_name" {
  description = "Map of cloud_account_name values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no cloud_account_name are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.cloud_account_name if v.cloud_account_name != null && length(v.cloud_account_name) > 0 }
}
output "identity_domains_settings_cloud_gate_cors_settings" {
  description = "Map of cloud_gate_cors_settings values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no cloud_gate_cors_settings are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => one(v.cloud_gate_cors_settings) if v.cloud_gate_cors_settings != null && length(v.cloud_gate_cors_settings) > 0 }
}
output "identity_domains_settings_cloud_migration_custom_url" {
  description = "Map of cloud_migration_custom_url values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no cloud_migration_custom_url are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.cloud_migration_custom_url if v.cloud_migration_custom_url != null && length(v.cloud_migration_custom_url) > 0 }
}
output "identity_domains_settings_cloud_migration_url_enabled" {
  description = "Map of cloud_migration_url_enabled values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no cloud_migration_url_enabled are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.cloud_migration_url_enabled if v.cloud_migration_url_enabled != null }
}
output "identity_domains_settings_company_names" {
  description = "Map of company_names values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no company_names are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.company_names if v.company_names != null && length(v.company_names) > 0 }
}
output "identity_domains_settings_compartment_ocid" {
  description = "Map of compartment_ocid values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no compartment_ocid are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.compartment_ocid if v.compartment_ocid != null && length(v.compartment_ocid) > 0 }
}
output "identity_domains_settings_contact_emails" {
  description = "Map of contact_emails values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no contact_emails are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.contact_emails if v.contact_emails != null && length(v.contact_emails) > 0 }
}
output "identity_domains_settings_csr_access" {
  description = "Map of csr_access values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no csr_access are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.csr_access if v.csr_access != null && length(v.csr_access) > 0 }
}
output "identity_domains_settings_custom_branding" {
  description = "Map of custom_branding values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no custom_branding are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.custom_branding if v.custom_branding != null }
}
output "identity_domains_settings_custom_css_location" {
  description = "Map of custom_css_location values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no custom_css_location are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.custom_css_location if v.custom_css_location != null && length(v.custom_css_location) > 0 }
}
output "identity_domains_settings_custom_html_location" {
  description = "Map of custom_html_location values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no custom_html_location are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.custom_html_location if v.custom_html_location != null && length(v.custom_html_location) > 0 }
}
output "identity_domains_settings_custom_translation" {
  description = "Map of custom_translation values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no custom_translation are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.custom_translation if v.custom_translation != null && length(v.custom_translation) > 0 }
}
output "identity_domains_settings_default_company_names" {
  description = "Map of default_company_names values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no default_company_names are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.default_company_names if v.default_company_names != null && length(v.default_company_names) > 0 }
}
output "identity_domains_settings_default_images" {
  description = "Map of default_images values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no default_images are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.default_images if v.default_images != null && length(v.default_images) > 0 }
}
output "identity_domains_settings_default_login_texts" {
  description = "Map of default_login_texts values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no default_login_texts are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.default_login_texts if v.default_login_texts != null && length(v.default_login_texts) > 0 }
}
output "identity_domains_settings_default_trust_scope" {
  description = "Map of default_trust_scope values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no default_trust_scope are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.default_trust_scope if v.default_trust_scope != null && length(v.default_trust_scope) > 0 }
}
output "identity_domains_settings_delete_in_progress" {
  description = "Map of delete_in_progress values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no delete_in_progress are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.delete_in_progress if v.delete_in_progress != null }
}
output "identity_domains_settings_diagnostic_level" {
  description = "Map of diagnostic_level values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no diagnostic_level are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.diagnostic_level if v.diagnostic_level != null }
}
output "identity_domains_settings_diagnostic_record_for_search_identifies_returned_resources" {
  description = "Map of diagnostic_record_for_search_identifies_returned_resources values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no diagnostic_record_for_search_identifies_returned_resources are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.diagnostic_record_for_search_identifies_returned_resources if v.diagnostic_record_for_search_identifies_returned_resources != null }
}
output "identity_domains_settings_diagnostic_tracing_upto" {
  description = "Map of diagnostic_tracing_upto values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no diagnostic_tracing_upto are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.diagnostic_tracing_upto if v.diagnostic_tracing_upto != null && length(v.diagnostic_tracing_upto) > 0 }
}
output "identity_domains_settings_domain_ocid" {
  description = "Map of domain_ocid values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no domain_ocid are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.domain_ocid if v.domain_ocid != null && length(v.domain_ocid) > 0 }
}
output "identity_domains_settings_enable_terms_of_use" {
  description = "Map of enable_terms_of_use values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no enable_terms_of_use are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.enable_terms_of_use if v.enable_terms_of_use != null }
}
output "identity_domains_settings_external_id" {
  description = "Map of external_id values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no external_id are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.external_id if v.external_id != null && length(v.external_id) > 0 }
}
output "identity_domains_settings_iam_upst_session_expiry" {
  description = "Map of iam_upst_session_expiry values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no iam_upst_session_expiry are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.iam_upst_session_expiry if v.iam_upst_session_expiry != null }
}
output "identity_domains_settings_idcs_created_by" {
  description = "Map of idcs_created_by values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no idcs_created_by are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.idcs_created_by if v.idcs_created_by != null && length(v.idcs_created_by) > 0 }
}
output "identity_domains_settings_idcs_endpoint" {
  description = "Map of idcs_endpoint values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no idcs_endpoint are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.idcs_endpoint if v.idcs_endpoint != null && length(v.idcs_endpoint) > 0 }
}
output "identity_domains_settings_idcs_last_modified_by" {
  description = "Map of idcs_last_modified_by values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no idcs_last_modified_by are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.idcs_last_modified_by if v.idcs_last_modified_by != null && length(v.idcs_last_modified_by) > 0 }
}
output "identity_domains_settings_idcs_last_upgraded_in_release" {
  description = "Map of idcs_last_upgraded_in_release values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no idcs_last_upgraded_in_release are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.idcs_last_upgraded_in_release if v.idcs_last_upgraded_in_release != null && length(v.idcs_last_upgraded_in_release) > 0 }
}
output "identity_domains_settings_idcs_prevented_operations" {
  description = "Map of idcs_prevented_operations values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no idcs_prevented_operations are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.idcs_prevented_operations if v.idcs_prevented_operations != null && length(v.idcs_prevented_operations) > 0 }
}
output "identity_domains_settings_images" {
  description = "Map of images values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no images are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.images if v.images != null && length(v.images) > 0 }
}
output "identity_domains_settings_is_hosted_page" {
  description = "Map of is_hosted_page values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no is_hosted_page are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.is_hosted_page if v.is_hosted_page != null }
}
output "identity_domains_settings_issuer" {
  description = "Map of issuer values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no issuer are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.issuer if v.issuer != null && length(v.issuer) > 0 }
}
output "identity_domains_settings_locale" {
  description = "Map of locale values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no locale are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.locale if v.locale != null && length(v.locale) > 0 }
}
output "identity_domains_settings_login_texts" {
  description = "Map of login_texts values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no login_texts are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.login_texts if v.login_texts != null && length(v.login_texts) > 0 }
}
output "identity_domains_settings_max_no_of_app_cmva_to_return" {
  description = "Map of max_no_of_app_cmva_to_return values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no max_no_of_app_cmva_to_return are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.max_no_of_app_cmva_to_return if v.max_no_of_app_cmva_to_return != null }
}
output "identity_domains_settings_max_no_of_app_role_members_to_return" {
  description = "Map of max_no_of_app_role_members_to_return values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no max_no_of_app_role_members_to_return are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.max_no_of_app_role_members_to_return if v.max_no_of_app_role_members_to_return != null }
}
output "identity_domains_settings_meta" {
  description = "Map of meta values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no meta are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.meta if v.meta != null && length(v.meta) > 0 }
}
output "identity_domains_settings_migration_status" {
  description = "Map of migration_status values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no migration_status are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.migration_status if v.migration_status != null && length(v.migration_status) > 0 }
}
output "identity_domains_settings_ocid" {
  description = "Map of ocid values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no ocid are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.ocid if v.ocid != null && length(v.ocid) > 0 }
}
output "identity_domains_settings_on_premises_provisioning" {
  description = "Map of on_premises_provisioning values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no on_premises_provisioning are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.on_premises_provisioning if v.on_premises_provisioning != null }
}
output "identity_domains_settings_preferred_language" {
  description = "Map of preferred_language values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no preferred_language are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.preferred_language if v.preferred_language != null && length(v.preferred_language) > 0 }
}
output "identity_domains_settings_prev_issuer" {
  description = "Map of prev_issuer values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no prev_issuer are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.prev_issuer if v.prev_issuer != null && length(v.prev_issuer) > 0 }
}
output "identity_domains_settings_privacy_policy_url" {
  description = "Map of privacy_policy_url values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no privacy_policy_url are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.privacy_policy_url if v.privacy_policy_url != null && length(v.privacy_policy_url) > 0 }
}
output "identity_domains_settings_purge_configs" {
  description = "Map of purge_configs values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no purge_configs are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.purge_configs if v.purge_configs != null && length(v.purge_configs) > 0 }
}
output "identity_domains_settings_re_auth_factor" {
  description = "Map of re_auth_factor values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no re_auth_factor are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.re_auth_factor if v.re_auth_factor != null && length(v.re_auth_factor) > 0 }
}
output "identity_domains_settings_re_auth_when_changing_my_authentication_factors" {
  description = "Map of re_auth_when_changing_my_authentication_factors values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no re_auth_when_changing_my_authentication_factors are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.re_auth_when_changing_my_authentication_factors if v.re_auth_when_changing_my_authentication_factors != null }
}
output "identity_domains_settings_resource_type_schema_version" {
  description = "Map of resource_type_schema_version values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no resource_type_schema_version are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.resource_type_schema_version if v.resource_type_schema_version != null && length(v.resource_type_schema_version) > 0 }
}
output "identity_domains_settings_schemas" {
  description = "Map of schemas values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no schemas are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.schemas if v.schemas != null && length(v.schemas) > 0 }
}
output "identity_domains_settings_service_admin_cannot_list_other_users" {
  description = "Map of service_admin_cannot_list_other_users values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no service_admin_cannot_list_other_users are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.service_admin_cannot_list_other_users if v.service_admin_cannot_list_other_users != null }
}
output "identity_domains_settings_setting_id" {
  description = "Map of setting_id values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no setting_id are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.setting_id if v.setting_id != null && length(v.setting_id) > 0 }
}
output "identity_domains_settings_signing_cert_public_access" {
  description = "Map of signing_cert_public_access values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no signing_cert_public_access are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.signing_cert_public_access if v.signing_cert_public_access != null }
}
output "identity_domains_settings_sub_mapping_attr" {
  description = "Map of sub_mapping_attr values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no sub_mapping_attr are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.sub_mapping_attr if v.sub_mapping_attr != null && length(v.sub_mapping_attr) > 0 }
}
output "identity_domains_settings_tags" {
  description = "Map of tags values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no tags are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "identity_domains_settings_tenancy_ocid" {
  description = "Map of tenancy_ocid values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no tenancy_ocid are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.tenancy_ocid if v.tenancy_ocid != null && length(v.tenancy_ocid) > 0 }
}
output "identity_domains_settings_tenant_custom_claims" {
  description = "Map of tenant_custom_claims values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no tenant_custom_claims are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.tenant_custom_claims if v.tenant_custom_claims != null && length(v.tenant_custom_claims) > 0 }
}
output "identity_domains_settings_terms_of_use_url" {
  description = "Map of terms_of_use_url values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no terms_of_use_url are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.terms_of_use_url if v.terms_of_use_url != null && length(v.terms_of_use_url) > 0 }
}
output "identity_domains_settings_timezone" {
  description = "Map of timezone values across all identity_domains_settings, keyed the same as var.identity_domains_settings except keys with no timezone are omitted"
  value       = { for k, v in oci_identity_domains_setting.identity_domains_settings : k => v.timezone if v.timezone != null && length(v.timezone) > 0 }
}

