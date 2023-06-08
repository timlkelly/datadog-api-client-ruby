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
  # The type of the monitor. For more information about `type`, see the [monitor options](https://docs.datadoghq.com/monitors/guide/monitor_api_options/) docs.
  class MonitorType
    include BaseEnumModel

    COMPOSITE = "composite".freeze
    EVENT_ALERT = "event alert".freeze
    LOG_ALERT = "log alert".freeze
    METRIC_ALERT = "metric alert".freeze
    PROCESS_ALERT = "process alert".freeze
    QUERY_ALERT = "query alert".freeze
    RUM_ALERT = "rum alert".freeze
    SERVICE_CHECK = "service check".freeze
    SYNTHETICS_ALERT = "synthetics alert".freeze
    TRACE_ANALYTICS_ALERT = "trace-analytics alert".freeze
    SLO_ALERT = "slo alert".freeze
    EVENT_V2_ALERT = "event-v2 alert".freeze
    AUDIT_ALERT = "audit alert".freeze
    CI_PIPELINES_ALERT = "ci-pipelines alert".freeze
    CI_TESTS_ALERT = "ci-tests alert".freeze
    ERROR_TRACKING_ALERT = "error-tracking alert".freeze
    DATABASE_MONITORING_ALERT = "database-monitoring alert".freeze
  end
end
