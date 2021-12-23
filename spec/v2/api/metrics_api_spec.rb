=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'spec_helper'
require 'json'

# Unit tests for DatadogAPIClient::V2::MetricsAPI
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MetricsAPI' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V2::MetricsAPI.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MetricsAPI' do
    it 'should create an instance of MetricsAPI' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V2::MetricsAPI)
    end
  end

  # unit tests for create_tag_configuration
  # Create a tag configuration
  # Create and define a list of queryable tag keys for an existing count/gauge/rate/distribution metric. Optionally, include percentile aggregations on any distribution metric or configure custom aggregations on any count, rate, or gauge metric. Can only be used with application keys of users with the &#x60;Manage Tags for Metrics&#x60; permission.
  # @param metric_name The name of the metric.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [MetricTagConfigurationResponse]
  describe 'create_tag_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_tag_configuration
  # Delete a tag configuration
  # Deletes a metric&#39;s tag configuration. Can only be used with application keys from users with the &#x60;Manage Tags for Metrics&#x60; permission.
  # @param metric_name The name of the metric.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_tag_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_tag_configuration_by_name
  # List tag configuration by name
  # Returns the tag configuration for the given metric name.
  # @param metric_name The name of the metric.
  # @param [Hash] opts the optional parameters
  # @return [MetricTagConfigurationResponse]
  describe 'list_tag_configuration_by_name test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_tag_configurations
  # List tag configurations
  # Returns all configured count/gauge/rate/distribution metric names (with additional filters if specified).
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :filter_configured Filter metrics that have configured tags.
  # @option opts [String] :filter_tags_configured Filter tag configurations by configured tags.
  # @option opts [MetricTagConfigurationMetricTypes] :filter_metric_type Filter tag configurations by metric type.
  # @option opts [Boolean] :filter_include_percentiles Filter distributions with additional percentile aggregations enabled or disabled.
  # @option opts [String] :filter_tags Filter metrics that have been submitted with the given tags. Supports boolean and wildcard expressions. Cannot be combined with other filters.
  # @option opts [Integer] :window_seconds The number of seconds of look back (from now) to apply to a filter[tag] query. Defaults value is 3600 (1 hour), maximum value is 172,800 (2 days).
  # @return [MetricsAndMetricTagConfigurationsResponse]
  describe 'list_tag_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_tags_by_metric_name
  # List tags by metric name
  # View indexed tag key-value pairs for a given metric name.
  # @param metric_name The name of the metric.
  # @param [Hash] opts the optional parameters
  # @return [MetricAllTagsResponse]
  describe 'list_tags_by_metric_name test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_volumes_by_metric_name
  # List distinct metric volumes by metric name
  # View distinct metrics volumes for the given metric name.  Custom distribution metrics will return both ingested and indexed custom metric volumes. For Metrics without Limits&amp;trade; beta customers, all metrics will return both ingested/indexed volumes. Custom metrics generated in-app from other products will return &#x60;null&#x60; for ingested volumes.
  # @param metric_name The name of the metric.
  # @param [Hash] opts the optional parameters
  # @return [MetricVolumesResponse]
  describe 'list_volumes_by_metric_name test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_tag_configuration
  # Update a tag configuration
  # Update the tag configuration of a metric or percentile aggregations of a distribution metric or custom aggregations of a count, rate, or gauge metric. Can only be used with application keys from users with the &#x60;Manage Tags for Metrics&#x60; permission.
  # @param metric_name The name of the metric.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [MetricTagConfigurationResponse]
  describe 'update_tag_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
