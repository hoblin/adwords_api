# Encoding: utf-8
#
# Authors:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# AdWords API Rakefile.

lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Google common ads library used for wrapper code generation.
require 'ads_common/build/savon_generator'

require 'adwords_api/api_config'

desc 'Default target - generate and build.'
task :default => [:generate, :build]

desc 'Package the AdWords API library into a gem file.'
task :build do
  system 'gem build google-adwords-api.gemspec'
end

desc 'Perform the unit testing.'
task :test do
  system 'ruby test/suite_unittests.rb'
end

desc 'Perform the examples testing.'
task :test_examples do
  Dir.glob('test/suite_exampletests_v*.rb').each do |file|
    puts 'Running test suite: %s' % file
    system 'ruby %s' % file
  end
end

desc 'Run tests coverage tool.'
task :coverage do
  system 'ruby test/coverage.rb'
end

desc 'Package demo apps.'
task :build_demo do
  ['adwords_on_rails'].each do |app|
    system 'tar cz --mode 644 -C examples -f %s.tar.gz %s' % [app, app]
  end
end

desc 'Generate the Adwords API stubs.'
task :generate do
  logger = Logger.new(STDOUT)
  logger.level = Logger::INFO
  api_config = AdwordsApi::ApiConfig
  versions = api_config.versions()
  versions.each do |version|
    code_path = 'lib/%s/%s' % [api_config.api_name.to_s.snakecase, version]
    wsdls = AdwordsApi::ApiConfig.get_wsdls(version)
    wsdls.each do |service_name, wsdl_url|
      logger.info('Processing %s at [%s]...' % [service_name, wsdl_url])
      generator = AdsCommon::Build::SavonGenerator.new(
          wsdl_url, code_path, api_config.api_name, version, service_name)
      generator.process_wsdl()
    end
  end
end
