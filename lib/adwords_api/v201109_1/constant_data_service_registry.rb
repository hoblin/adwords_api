# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.8.0 on 2012-08-03 17:40:04.

require 'adwords_api/errors'

module AdwordsApi; module V201109_1; module ConstantDataService
  class ConstantDataServiceRegistry
    CONSTANTDATASERVICE_METHODS = {:get_carrier_criterion=>{:input=>[], :output=>{:name=>"get_carrier_criterion_response", :fields=>[{:name=>:rval, :type=>"Carrier", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_language_criterion=>{:input=>[], :output=>{:name=>"get_language_criterion_response", :fields=>[{:name=>:rval, :type=>"Language", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    CONSTANTDATASERVICE_TYPES = {:AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AuthorizationError=>{:fields=>[{:name=>:reason, :type=>"AuthorizationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Carrier=>{:fields=>[{:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :ClientTermsError=>{:fields=>[{:name=>:reason, :type=>"ClientTermsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateError=>{:fields=>[{:name=>:reason, :type=>"DateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DistinctError=>{:fields=>[{:name=>:reason, :type=>"DistinctError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Keyword=>{:fields=>[{:name=>:text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:match_type, :type=>"KeywordMatchType", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :Language=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :NotEmptyError=>{:fields=>[{:name=>:reason, :type=>"NotEmptyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NotWhitelistedError=>{:fields=>[{:name=>:reason, :type=>"NotWhitelistedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OperatingSystemVersion=>{:fields=>[], :base=>"Criterion"}, :Placement=>{:fields=>[{:name=>:url, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :ProductConditionOperand=>{:fields=>[{:name=>:operand, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :QuotaCheckError=>{:fields=>[{:name=>:reason, :type=>"QuotaCheckError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RateExceededError=>{:fields=>[{:name=>:reason, :type=>"RateExceededError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_scope, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retry_after_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RejectedError=>{:fields=>[{:name=>:reason, :type=>"RejectedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequestError=>{:fields=>[{:name=>:reason, :type=>"RequestError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SelectorError=>{:fields=>[{:name=>:reason, :type=>"SelectorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SizeLimitError=>{:fields=>[{:name=>:reason, :type=>"SizeLimitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SoapHeader=>{:fields=>[{:name=>:auth_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :CriterionUserInterest=>{:fields=>[{:name=>:user_interest_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_interest_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :CriterionUserList=>{:fields=>[{:name=>:user_list_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_list_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_list_membership_status, :type=>"CriterionUserList.MembershipStatus", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :Vertical=>{:fields=>[{:name=>:path, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Criterion"}, :DatabaseError=>{:fields=>[{:name=>:reason, :type=>"DatabaseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProductCondition=>{:fields=>[{:name=>:argument, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operand, :type=>"ProductConditionOperand", :min_occurs=>0, :max_occurs=>1}]}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Product=>{:fields=>[{:name=>:conditions, :type=>"ProductCondition", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:text, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :Criterion=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"Criterion.Type", :min_occurs=>0, :max_occurs=>1}, {:name=>:criterion_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :"AuthorizationError.Reason"=>{:fields=>[]}, :"ClientTermsError.Reason"=>{:fields=>[]}, :"Criterion.Type"=>{:fields=>[]}, :"DatabaseError.Reason"=>{:fields=>[]}, :"DateError.Reason"=>{:fields=>[]}, :"DistinctError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :KeywordMatchType=>{:fields=>[]}, :"NotEmptyError.Reason"=>{:fields=>[]}, :"NotWhitelistedError.Reason"=>{:fields=>[]}, :"NullError.Reason"=>{:fields=>[]}, :"QuotaCheckError.Reason"=>{:fields=>[]}, :"RangeError.Reason"=>{:fields=>[]}, :"RateExceededError.Reason"=>{:fields=>[]}, :"RejectedError.Reason"=>{:fields=>[]}, :"RequestError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"SelectorError.Reason"=>{:fields=>[]}, :"SizeLimitError.Reason"=>{:fields=>[]}, :"CriterionUserList.MembershipStatus"=>{:fields=>[]}}
    CONSTANTDATASERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CONSTANTDATASERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CONSTANTDATASERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CONSTANTDATASERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, ConstantDataServiceRegistry)
    end
  end
end; end; end
