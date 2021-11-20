=begin
#Staffology Payroll API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1
Contact: duane@staffology.co.uk
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.29
=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::BureauApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BureauApi' do
  before do
    # run before each test
    @instance = SwaggerClient::BureauApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BureauApi' do
    it 'should create an instance of BureauApi' do
      expect(@instance).to be_instance_of(SwaggerClient::BureauApi)
    end
  end

  # unit tests for employers_bureau
  # List Employers
  # Returns a list of Employers.\\n  This differs from the main Employer list end point in that the metadata included is more relevant to Bureau activities  It also gives you the ability to filter based on the allocated Processor.\\n  Note: an entry is returned for each PaySchedule. So if the employer has both a Monthly and a Weekly PaySchedule then they&#x27;ll appear twice
  # @param [Hash] opts the optional parameters
  # @option opts [String] :processor The Id of the Processor (User) you want to restrict the list to.
  # @return [Array<Item>]
  describe 'employers_bureau test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_report_pack_bureau
  # Get BureauSettings ReportPack
  # If a ReportPack is specified in the BureauSettings then it is returned, otherwise an empty ReportPAck is returned
  # @param employer_id 
  # @param [Hash] opts the optional parameters
  # @return [ReportPack]
  describe 'get_report_pack_bureau test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_settings_bureau
  # Get BureauSettings
  # Returns the BureauSettings for the Employer
  # @param employer_id 
  # @param [Hash] opts the optional parameters
  # @return [BureauSettings]
  describe 'get_settings_bureau test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for processor_users_bureau
  # List Allocated Processors
  # Returns a list of Users that have one or more Employers allocated to them as the Processor
  # @param [Hash] opts the optional parameters
  # @return [Array<Item>]
  describe 'processor_users_bureau test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_settings_bureau
  # Update BureauSettings
  # Updates the BureaSettings for the Employer
  # @param employer_id 
  # @param [Hash] opts the optional parameters
  # @option opts [BureauSettings] :body 
  # @return [BureauSettings]
  describe 'update_settings_bureau test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end