resource "oci_identity_domains_setting" "identity_domains_settings" {
  for_each = var.identity_domains_settings

  csr_access                                                 = each.value.csr_access
  idcs_endpoint                                              = each.value.idcs_endpoint
  schemas                                                    = each.value.schemas
  setting_id                                                 = each.value.setting_id
  account_always_trust_scope                                 = each.value.account_always_trust_scope
  allowed_domains                                            = each.value.allowed_domains
  allowed_forgot_password_flow_return_urls                   = each.value.allowed_forgot_password_flow_return_urls
  allowed_notification_redirect_urls                         = each.value.allowed_notification_redirect_urls
  attribute_sets                                             = each.value.attribute_sets
  attributes                                                 = each.value.attributes
  audit_event_retention_period                               = each.value.audit_event_retention_period
  authorization                                              = each.value.authorization
  cloud_migration_custom_url                                 = each.value.cloud_migration_custom_url
  cloud_migration_url_enabled                                = each.value.cloud_migration_url_enabled
  contact_emails                                             = each.value.contact_emails
  custom_branding                                            = each.value.custom_branding
  custom_css_location                                        = each.value.custom_css_location
  custom_html_location                                       = each.value.custom_html_location
  custom_translation                                         = each.value.custom_translation
  default_trust_scope                                        = each.value.default_trust_scope
  diagnostic_level                                           = each.value.diagnostic_level
  diagnostic_record_for_search_identifies_returned_resources = each.value.diagnostic_record_for_search_identifies_returned_resources
  enable_terms_of_use                                        = each.value.enable_terms_of_use
  external_id                                                = each.value.external_id
  iam_upst_session_expiry                                    = each.value.iam_upst_session_expiry
  is_hosted_page                                             = each.value.is_hosted_page
  issuer                                                     = each.value.issuer
  locale                                                     = each.value.locale
  max_no_of_app_cmva_to_return                               = each.value.max_no_of_app_cmva_to_return
  max_no_of_app_role_members_to_return                       = each.value.max_no_of_app_role_members_to_return
  ocid                                                       = each.value.ocid
  preferred_language                                         = each.value.preferred_language
  prev_issuer                                                = each.value.prev_issuer
  privacy_policy_url                                         = each.value.privacy_policy_url
  re_auth_factor                                             = each.value.re_auth_factor
  re_auth_when_changing_my_authentication_factors            = each.value.re_auth_when_changing_my_authentication_factors
  resource_type_schema_version                               = each.value.resource_type_schema_version
  service_admin_cannot_list_other_users                      = each.value.service_admin_cannot_list_other_users
  signing_cert_public_access                                 = each.value.signing_cert_public_access
  sub_mapping_attr                                           = each.value.sub_mapping_attr
  terms_of_use_url                                           = each.value.terms_of_use_url
  timezone                                                   = each.value.timezone

  dynamic "certificate_validation" {
    for_each = each.value.certificate_validation != null ? [each.value.certificate_validation] : []
    content {
      crl_check_on_ocsp_failure_enabled     = certificate_validation.value.crl_check_on_ocsp_failure_enabled
      crl_enabled                           = certificate_validation.value.crl_enabled
      crl_location                          = certificate_validation.value.crl_location
      crl_refresh_interval                  = certificate_validation.value.crl_refresh_interval
      ocsp_enabled                          = certificate_validation.value.ocsp_enabled
      ocsp_responder_url                    = certificate_validation.value.ocsp_responder_url
      ocsp_settings_responder_url_preferred = certificate_validation.value.ocsp_settings_responder_url_preferred
      ocsp_signing_certificate_alias        = certificate_validation.value.ocsp_signing_certificate_alias
      ocsp_timeout_duration                 = certificate_validation.value.ocsp_timeout_duration
      ocsp_unknown_response_status_allowed  = certificate_validation.value.ocsp_unknown_response_status_allowed
    }
  }

  dynamic "cloud_gate_cors_settings" {
    for_each = each.value.cloud_gate_cors_settings != null ? [each.value.cloud_gate_cors_settings] : []
    content {
      cloud_gate_cors_allow_null_origin = cloud_gate_cors_settings.value.cloud_gate_cors_allow_null_origin
      cloud_gate_cors_allowed_origins   = cloud_gate_cors_settings.value.cloud_gate_cors_allowed_origins
      cloud_gate_cors_enabled           = cloud_gate_cors_settings.value.cloud_gate_cors_enabled
      cloud_gate_cors_exposed_headers   = cloud_gate_cors_settings.value.cloud_gate_cors_exposed_headers
      cloud_gate_cors_max_age           = cloud_gate_cors_settings.value.cloud_gate_cors_max_age
    }
  }

  dynamic "company_names" {
    for_each = each.value.company_names != null ? each.value.company_names : []
    content {
      locale = company_names.value.locale
      value  = company_names.value.value
    }
  }

  dynamic "images" {
    for_each = each.value.images != null ? each.value.images : []
    content {
      display = images.value.display
      type    = images.value.type
      value   = images.value.value
    }
  }

  dynamic "login_texts" {
    for_each = each.value.login_texts != null ? each.value.login_texts : []
    content {
      locale = login_texts.value.locale
      value  = login_texts.value.value
    }
  }

  dynamic "purge_configs" {
    for_each = each.value.purge_configs != null ? each.value.purge_configs : []
    content {
      resource_name    = purge_configs.value.resource_name
      retention_period = purge_configs.value.retention_period
    }
  }

  dynamic "tags" {
    for_each = each.value.tags != null ? each.value.tags : []
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }

  dynamic "tenant_custom_claims" {
    for_each = each.value.tenant_custom_claims != null ? each.value.tenant_custom_claims : []
    content {
      all_scopes = tenant_custom_claims.value.all_scopes
      expression = tenant_custom_claims.value.expression
      mode       = tenant_custom_claims.value.mode
      name       = tenant_custom_claims.value.name
      scopes     = tenant_custom_claims.value.scopes
      token_type = tenant_custom_claims.value.token_type
      value      = tenant_custom_claims.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

