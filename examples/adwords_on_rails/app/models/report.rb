class Report

  REPORT_LIST = {
    'ACCOUNT_PERFORMANCE_REPORT' => {
        :name => 'Account Performance'
    },
    'AD_PERFORMANCE_REPORT' => {
        :name => 'Ad Performance'
    },
    'AD_EXTENSIONS_PERFORMANCE_REPORT' => {
        :name => 'Ad Extensions Performance'
    },
    'ADGROUP_PERFORMANCE_REPORT' => {
        :name => 'Ad Group Performance'
    },
    'AUTOMATIC_PLACEMENTS_PERFORMANCE_REPORT' => {
        :name => 'Automatic Placements Performance'
    },
    'CAMPAIGN_NEGATIVE_KEYWORDS_PERFORMANCE_REPORT' => {
        :name => 'Campaign Negative Keywords Performance'
    },
    'CAMPAIGN_NEGATIVE_PLACEMENTS_PERFORMANCE_REPORT' => {
        :name => 'Campaign Negative Placements Performance'
    },
    'CAMPAIGN_PERFORMANCE_REPORT' => {
        :name => 'Campaign Performance'
    },
    'CREATIVE_CONVERSION_REPORT' => {
        :name => 'Creative Conversion'
    },
    'CRITERIA_PERFORMANCE_REPORT' => {
        :name => 'Criteria Performance'
    },
    'DEMOGRAPHIC_PERFORMANCE_REPORT' => {
        :name => 'Demographic Performance'
    },
    'DESTINATION_URL_REPORT' => {
        :name => 'Destination URL'
    },
    'GEO_PERFORMANCE_REPORT' => {
        :name => 'Geo Performance'
    },
    'KEYWORDS_PERFORMANCE_REPORT' => {
        :name => 'Keywords Performance'
    },
    'MANAGED_PLACEMENTS_PERFORMANCE_REPORT' => {
        :name => 'Managed Placements Performance'
    },
    'SEARCH_QUERY_PERFORMANCE_REPORT' => {
        :name => 'Search Query Performance'
    },
    'URL_PERFORMANCE_REPORT' => {
        :name => 'URL Performance'
    }
  }

  attr_reader :id, :name

  def initialize(id, name)
    @id, @name = id, name
  end

  def self.report_for_type(report_type)
    return reports()[report_type]
  end

  def self.reports()
    @@reports ||= REPORT_LIST.inject({}) do |result, (key, value)|
      result[key] = Report.new(key, value[:name])
      result
    end
    return @@reports
  end

  def self.create_definition(template, data)
    result = template.dup()
    result[:selector][:fields] = string_to_array(data['fields'])
    result[:report_type] = data[:type]
    result[:download_format] = data[:format]
    result[:include_zero_impressions] = true if 'true'.eql?(data[:zeroes])
    return result
  end

  private

  def self.string_to_array(str)
    return [] if str.nil? or str.empty?
    result = str.split(',')
    return result.map {|item| item.strip}
  end
end
