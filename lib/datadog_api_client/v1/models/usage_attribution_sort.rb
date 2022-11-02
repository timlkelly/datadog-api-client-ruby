=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # The field to sort by.
  class UsageAttributionSort
    include BaseEnumModel

    API_PERCENTAGE = "api_percentage".freeze
    SNMP_USAGE = "snmp_usage".freeze
    APM_HOST_USAGE = "apm_host_usage".freeze
    API_USAGE = "api_usage".freeze
    APPSEC_USAGE = "appsec_usage".freeze
    APPSEC_PERCENTAGE = "appsec_percentage".freeze
    CONTAINER_USAGE = "container_usage".freeze
    CUSTOM_TIMESERIES_PERCENTAGE = "custom_timeseries_percentage".freeze
    CONTAINER_PERCENTAGE = "container_percentage".freeze
    APM_HOST_PERCENTAGE = "apm_host_percentage".freeze
    NPM_HOST_PERCENTAGE = "npm_host_percentage".freeze
    BROWSER_PERCENTAGE = "browser_percentage".freeze
    BROWSER_USAGE = "browser_usage".freeze
    INFRA_HOST_PERCENTAGE = "infra_host_percentage".freeze
    SNMP_PERCENTAGE = "snmp_percentage".freeze
    NPM_HOST_USAGE = "npm_host_usage".freeze
    INFRA_HOST_USAGE = "infra_host_usage".freeze
    CUSTOM_TIMESERIES_USAGE = "custom_timeseries_usage".freeze
    LAMBDA_FUNCTIONS_USAGE = "lambda_functions_usage".freeze
    LAMBDA_FUNCTIONS_PERCENTAGE = "lambda_functions_percentage".freeze
    LAMBDA_INVOCATIONS_USAGE = "lambda_invocations_usage".freeze
    LAMBDA_INVOCATIONS_PERCENTAGE = "lambda_invocations_percentage".freeze
    ESTIMATED_INDEXED_LOGS_USAGE = "estimated_indexed_logs_usage".freeze
    ESTIMATED_INDEXED_LOGS_PERCENTAGE = "estimated_indexed_logs_percentage".freeze
    ESTIMATED_INGESTED_LOGS_USAGE = "estimated_ingested_logs_usage".freeze
    ESTIMATED_INGESTED_LOGS_PERCENTAGE = "estimated_ingested_logs_percentage".freeze
    ESTIMATED_INDEXED_SPANS_USAGE = "estimated_indexed_spans_usage".freeze
    ESTIMATED_INDEXED_SPANS_PERCENTAGE = "estimated_indexed_spans_percentage".freeze
    ESTIMATED_INGESTED_SPANS_USAGE = "estimated_ingested_spans_usage".freeze
    ESTIMATED_INGESTED_SPANS_PERCENTAGE = "estimated_ingested_spans_percentage".freeze
    APM_FARGATE_USAGE = "apm_fargate_usage".freeze
    APM_FARGATE_PERCENTAGE = "apm_fargate_percentage".freeze
    APPSEC_FARGATE_USAGE = "appsec_fargate_usage".freeze
    APPSEC_FARGATE_PERCENTAGE = "appsec_fargate_percentage".freeze
  end
end
