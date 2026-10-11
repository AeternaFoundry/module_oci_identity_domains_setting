variable "identity_domains_settings" {
  description = <<EOT
Map of identity_domains_settings, attributes below
Required:
    - csr_access
    - idcs_endpoint
    - schemas
    - setting_id
Optional:
    - account_always_trust_scope
    - allowed_domains
    - allowed_forgot_password_flow_return_urls
    - allowed_notification_redirect_urls
    - attribute_sets
    - attributes
    - audit_event_retention_period
    - authorization
    - cloud_migration_custom_url
    - cloud_migration_url_enabled
    - contact_emails
    - custom_branding
    - custom_css_location
    - custom_html_location
    - custom_translation
    - default_trust_scope
    - diagnostic_level
    - diagnostic_record_for_search_identifies_returned_resources
    - enable_terms_of_use
    - external_id
    - iam_upst_session_expiry
    - is_hosted_page
    - issuer
    - locale
    - max_no_of_app_cmva_to_return
    - max_no_of_app_role_members_to_return
    - ocid
    - preferred_language
    - prev_issuer
    - privacy_policy_url
    - re_auth_factor
    - re_auth_when_changing_my_authentication_factors
    - resource_type_schema_version
    - service_admin_cannot_list_other_users
    - signing_cert_public_access
    - sub_mapping_attr
    - terms_of_use_url
    - timezone
    - certificate_validation (block):
        - crl_check_on_ocsp_failure_enabled (optional)
        - crl_enabled (optional)
        - crl_location (optional)
        - crl_refresh_interval (optional)
        - ocsp_enabled (optional)
        - ocsp_responder_url (optional)
        - ocsp_settings_responder_url_preferred (optional)
        - ocsp_signing_certificate_alias (optional)
        - ocsp_timeout_duration (optional)
        - ocsp_unknown_response_status_allowed (optional)
    - cloud_gate_cors_settings (block):
        - cloud_gate_cors_allow_null_origin (optional)
        - cloud_gate_cors_allowed_origins (optional)
        - cloud_gate_cors_enabled (optional)
        - cloud_gate_cors_exposed_headers (optional)
        - cloud_gate_cors_max_age (optional)
    - company_names (block):
        - locale (required)
        - value (required)
    - images (block):
        - display (optional)
        - type (required)
        - value (required)
    - login_texts (block):
        - locale (required)
        - value (required)
    - purge_configs (block):
        - resource_name (required)
        - retention_period (required)
    - tags (block):
        - key (required)
        - value (required)
    - tenant_custom_claims (block):
        - all_scopes (required)
        - expression (required)
        - mode (required)
        - name (required)
        - scopes (optional)
        - token_type (required)
        - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    csr_access                                                 = string
    idcs_endpoint                                              = string
    schemas                                                    = list(string)
    setting_id                                                 = string
    account_always_trust_scope                                 = optional(bool)
    allowed_domains                                            = optional(list(string))
    allowed_forgot_password_flow_return_urls                   = optional(list(string))
    allowed_notification_redirect_urls                         = optional(list(string))
    attribute_sets                                             = optional(list(string))
    attributes                                                 = optional(string)
    audit_event_retention_period                               = optional(number)
    authorization                                              = optional(string)
    cloud_migration_custom_url                                 = optional(string)
    cloud_migration_url_enabled                                = optional(bool)
    contact_emails                                             = optional(list(string))
    custom_branding                                            = optional(bool)
    custom_css_location                                        = optional(string)
    custom_html_location                                       = optional(string)
    custom_translation                                         = optional(string)
    default_trust_scope                                        = optional(string)
    diagnostic_level                                           = optional(number)
    diagnostic_record_for_search_identifies_returned_resources = optional(bool)
    enable_terms_of_use                                        = optional(bool)
    external_id                                                = optional(string)
    iam_upst_session_expiry                                    = optional(number)
    is_hosted_page                                             = optional(bool)
    issuer                                                     = optional(string)
    locale                                                     = optional(string)
    max_no_of_app_cmva_to_return                               = optional(number)
    max_no_of_app_role_members_to_return                       = optional(number)
    ocid                                                       = optional(string)
    preferred_language                                         = optional(string)
    prev_issuer                                                = optional(string)
    privacy_policy_url                                         = optional(string)
    re_auth_factor                                             = optional(list(string))
    re_auth_when_changing_my_authentication_factors            = optional(bool)
    resource_type_schema_version                               = optional(string)
    service_admin_cannot_list_other_users                      = optional(bool)
    signing_cert_public_access                                 = optional(bool)
    sub_mapping_attr                                           = optional(string)
    terms_of_use_url                                           = optional(string)
    timezone                                                   = optional(string)
    certificate_validation = optional(object({
      crl_check_on_ocsp_failure_enabled     = optional(bool)
      crl_enabled                           = optional(bool)
      crl_location                          = optional(string)
      crl_refresh_interval                  = optional(number)
      ocsp_enabled                          = optional(bool)
      ocsp_responder_url                    = optional(string)
      ocsp_settings_responder_url_preferred = optional(bool)
      ocsp_signing_certificate_alias        = optional(string)
      ocsp_timeout_duration                 = optional(number)
      ocsp_unknown_response_status_allowed  = optional(bool)
    }))
    cloud_gate_cors_settings = optional(object({
      cloud_gate_cors_allow_null_origin = optional(bool)
      cloud_gate_cors_allowed_origins   = optional(list(string))
      cloud_gate_cors_enabled           = optional(bool)
      cloud_gate_cors_exposed_headers   = optional(list(string))
      cloud_gate_cors_max_age           = optional(number)
    }))
    company_names = optional(list(object({
      locale = string
      value  = string
    })))
    images = optional(list(object({
      display = optional(string)
      type    = string
      value   = string
    })))
    login_texts = optional(list(object({
      locale = string
      value  = string
    })))
    purge_configs = optional(list(object({
      resource_name    = string
      retention_period = number
    })))
    tags = optional(list(object({
      key   = string
      value = string
    })))
    tenant_custom_claims = optional(list(object({
      all_scopes = bool
      expression = bool
      mode       = string
      name       = string
      scopes     = optional(list(string))
      token_type = string
      value      = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

