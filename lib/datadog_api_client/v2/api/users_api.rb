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

require 'cgi'

module DatadogAPIClient::V2
  class UsersAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end
    # Create a service account
    # Create a service account for your organization.
    # @param body [ServiceAccountCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [UserResponse]
    def create_service_account(body, opts = {})
      data, _status_code, _headers = create_service_account_with_http_info(body, opts)
      data
    end

    # Create a service account
    # Create a service account for your organization.
    # @param body [ServiceAccountCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def create_service_account_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_service_account)
        unstable_enabled = @api_client.config.unstable_operations[:create_service_account]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_service_account")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "create_service_account"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.create_service_account ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersAPI.create_service_account"
      end
      # resource path
      local_var_path = '/api/v2/service_accounts'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_service_account,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAPI#create_service_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a user
    # Create a user for your organization.
    # @param body [UserCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [UserResponse]
    def create_user(body, opts = {})
      data, _status_code, _headers = create_user_with_http_info(body, opts)
      data
    end

    # Create a user
    # Create a user for your organization.
    # @param body [UserCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def create_user_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_user)
        unstable_enabled = @api_client.config.unstable_operations[:create_user]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_user")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "create_user"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.create_user ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersAPI.create_user"
      end
      # resource path
      local_var_path = '/api/v2/users'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_user,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAPI#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Disable a user
    # Disable a user. Can only be used with an application key belonging to an administrator user.
    # @param user_id [String] The ID of the user.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def disable_user(user_id, opts = {})
      disable_user_with_http_info(user_id, opts)
      nil
    end

    # Disable a user
    # Disable a user. Can only be used with an application key belonging to an administrator user.
    # @param user_id [String] The ID of the user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def disable_user_with_http_info(user_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:disable_user)
        unstable_enabled = @api_client.config.unstable_operations[:disable_user]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "disable_user")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "disable_user"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.disable_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersAPI.disable_user"
      end
      # resource path
      local_var_path = '/api/v2/users/{user_id}'.sub('{' + 'user_id' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :disable_user,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAPI#disable_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a user invitation
    # Returns a single user invitation by its UUID.
    # @param user_invitation_uuid [String] The UUID of the user invitation.
    # @param [Hash] opts the optional parameters
    # @return [UserInvitationResponse]
    def get_invitation(user_invitation_uuid, opts = {})
      data, _status_code, _headers = get_invitation_with_http_info(user_invitation_uuid, opts)
      data
    end

    # Get a user invitation
    # Returns a single user invitation by its UUID.
    # @param user_invitation_uuid [String] The UUID of the user invitation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserInvitationResponse, Integer, Hash)>] UserInvitationResponse data, response status code and response headers
    def get_invitation_with_http_info(user_invitation_uuid, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_invitation)
        unstable_enabled = @api_client.config.unstable_operations[:get_invitation]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_invitation")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_invitation"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.get_invitation ...'
      end
      # verify the required parameter 'user_invitation_uuid' is set
      if @api_client.config.client_side_validation && user_invitation_uuid.nil?
        fail ArgumentError, "Missing the required parameter 'user_invitation_uuid' when calling UsersAPI.get_invitation"
      end
      # resource path
      local_var_path = '/api/v2/user_invitations/{user_invitation_uuid}'.sub('{' + 'user_invitation_uuid' + '}', CGI.escape(user_invitation_uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserInvitationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_invitation,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAPI#get_invitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get user details
    # Get a user in the organization specified by the user’s `user_id`.
    # @param user_id [String] The ID of the user.
    # @param [Hash] opts the optional parameters
    # @return [UserResponse]
    def get_user(user_id, opts = {})
      data, _status_code, _headers = get_user_with_http_info(user_id, opts)
      data
    end

    # Get user details
    # Get a user in the organization specified by the user’s &#x60;user_id&#x60;.
    # @param user_id [String] The ID of the user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def get_user_with_http_info(user_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_user)
        unstable_enabled = @api_client.config.unstable_operations[:get_user]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_user")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_user"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.get_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersAPI.get_user"
      end
      # resource path
      local_var_path = '/api/v2/users/{user_id}'.sub('{' + 'user_id' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_user,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAPI#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a user organization
    # Get a user organization. Returns the user information and all organizations joined by this user.
    # @param user_id [String] The ID of the user.
    # @param [Hash] opts the optional parameters
    # @return [UserResponse]
    def list_user_organizations(user_id, opts = {})
      data, _status_code, _headers = list_user_organizations_with_http_info(user_id, opts)
      data
    end

    # Get a user organization
    # Get a user organization. Returns the user information and all organizations joined by this user.
    # @param user_id [String] The ID of the user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def list_user_organizations_with_http_info(user_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_user_organizations)
        unstable_enabled = @api_client.config.unstable_operations[:list_user_organizations]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_user_organizations")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_user_organizations"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.list_user_organizations ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersAPI.list_user_organizations"
      end
      # resource path
      local_var_path = '/api/v2/users/{user_id}/orgs'.sub('{' + 'user_id' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_user_organizations,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAPI#list_user_organizations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a user permissions
    # Get a user permission set. Returns a list of the user’s permissions granted by the associated user's roles.
    # @param user_id [String] The ID of the user.
    # @param [Hash] opts the optional parameters
    # @return [PermissionsResponse]
    def list_user_permissions(user_id, opts = {})
      data, _status_code, _headers = list_user_permissions_with_http_info(user_id, opts)
      data
    end

    # Get a user permissions
    # Get a user permission set. Returns a list of the user’s permissions granted by the associated user&#39;s roles.
    # @param user_id [String] The ID of the user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PermissionsResponse, Integer, Hash)>] PermissionsResponse data, response status code and response headers
    def list_user_permissions_with_http_info(user_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_user_permissions)
        unstable_enabled = @api_client.config.unstable_operations[:list_user_permissions]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_user_permissions")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_user_permissions"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.list_user_permissions ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersAPI.list_user_permissions"
      end
      # resource path
      local_var_path = '/api/v2/users/{user_id}/permissions'.sub('{' + 'user_id' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PermissionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_user_permissions,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAPI#list_user_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all users
    # Get the list of all users in the organization. This list includes all users even if they are deactivated or unverified.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Size for a given page. (default to 10)
    # @option opts [Integer] :page_number Specific page number to return. (default to 0)
    # @option opts [String] :sort User attribute to order results by. Sort order is ascending by default. Sort order is descending if the field is prefixed by a negative sign, for example &#x60;sort&#x3D;-name&#x60;. Options: &#x60;name&#x60;, &#x60;modified_at&#x60;, &#x60;user_count&#x60;. (default to 'name')
    # @option opts [QuerySortOrder] :sort_dir Direction of sort. Options: &#x60;asc&#x60;, &#x60;desc&#x60;. (default to 'desc')
    # @option opts [String] :filter Filter all users by the given string. Defaults to no filtering.
    # @option opts [String] :filter_status Filter on status attribute. Comma separated list, with possible values &#x60;Active&#x60;, &#x60;Pending&#x60;, and &#x60;Disabled&#x60;. Defaults to no filtering.
    # @return [UsersResponse]
    def list_users(opts = {})
      data, _status_code, _headers = list_users_with_http_info(opts)
      data
    end

    # List all users
    # Get the list of all users in the organization. This list includes all users even if they are deactivated or unverified.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Size for a given page.
    # @option opts [Integer] :page_number Specific page number to return.
    # @option opts [String] :sort User attribute to order results by. Sort order is ascending by default. Sort order is descending if the field is prefixed by a negative sign, for example &#x60;sort&#x3D;-name&#x60;. Options: &#x60;name&#x60;, &#x60;modified_at&#x60;, &#x60;user_count&#x60;.
    # @option opts [QuerySortOrder] :sort_dir Direction of sort. Options: &#x60;asc&#x60;, &#x60;desc&#x60;.
    # @option opts [String] :filter Filter all users by the given string. Defaults to no filtering.
    # @option opts [String] :filter_status Filter on status attribute. Comma separated list, with possible values &#x60;Active&#x60;, &#x60;Pending&#x60;, and &#x60;Disabled&#x60;. Defaults to no filtering.
    # @return [Array<(UsersResponse, Integer, Hash)>] UsersResponse data, response status code and response headers
    def list_users_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_users)
        unstable_enabled = @api_client.config.unstable_operations[:list_users]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_users")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_users"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.list_users ...'
      end
      # resource path
      local_var_path = '/api/v2/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page[number]'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'sort_dir'] = opts[:'sort_dir'] if !opts[:'sort_dir'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'filter[status]'] = opts[:'filter_status'] if !opts[:'filter_status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UsersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_users,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAPI#list_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send invitation emails
    # Sends emails to one or more users inviting them to join the organization.
    # @param body [UserInvitationsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [UserInvitationsResponse]
    def send_invitations(body, opts = {})
      data, _status_code, _headers = send_invitations_with_http_info(body, opts)
      data
    end

    # Send invitation emails
    # Sends emails to one or more users inviting them to join the organization.
    # @param body [UserInvitationsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserInvitationsResponse, Integer, Hash)>] UserInvitationsResponse data, response status code and response headers
    def send_invitations_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:send_invitations)
        unstable_enabled = @api_client.config.unstable_operations[:send_invitations]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "send_invitations")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "send_invitations"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.send_invitations ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersAPI.send_invitations"
      end
      # resource path
      local_var_path = '/api/v2/user_invitations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'UserInvitationsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :send_invitations,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAPI#send_invitations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a user
    # Edit a user. Can only be used with an application key belonging to an administrator user.
    # @param user_id [String] The ID of the user.
    # @param body [UserUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [UserResponse]
    def update_user(user_id, body, opts = {})
      data, _status_code, _headers = update_user_with_http_info(user_id, body, opts)
      data
    end

    # Update a user
    # Edit a user. Can only be used with an application key belonging to an administrator user.
    # @param user_id [String] The ID of the user.
    # @param body [UserUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def update_user_with_http_info(user_id, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_user)
        unstable_enabled = @api_client.config.unstable_operations[:update_user]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_user")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "update_user"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.update_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersAPI.update_user"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersAPI.update_user"
      end
      # resource path
      local_var_path = '/api/v2/users/{user_id}'.sub('{' + 'user_id' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_user,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAPI#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
