# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.8.0 on 2012-08-03 17:39:29.

require 'ads_common/savon_service'
require 'adwords_api/v201109/campaign_target_service_registry'

module AdwordsApi; module V201109; module CampaignTargetService
  class CampaignTargetService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201109'
      super(config, endpoint, namespace, :v201109)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    private

    def get_service_registry()
      return CampaignTargetServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201109::CampaignTargetService
    end
  end
end; end; end
