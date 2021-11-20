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

# Unit tests for SwaggerClient::DpsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DpsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::DpsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DpsApi' do
    it 'should create an instance of DpsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::DpsApi)
    end
  end

  # unit tests for apply_dps
  # Apply Notice
  # Applies the specified DPS Notice.
  # @param employer_id 
  # @param id The Id of the DpsNotice you want to apply.
  # @param [Hash] opts the optional parameters
  # @return [DpsNotice]
  describe 'apply_dps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for check_for_notices_dps
  # Check for new Notices
  # Checks with HMRC for new notices. Returns an integer showing how many new notices were found
  # @param employer_id 
  # @param [Hash] opts the optional parameters
  # @return [Integer]
  describe 'check_for_notices_dps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_all_dps
  # Delete All Notices
  # @param employer_id The Id of the Employer that you want to delete all notices for.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_all_dps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_dps
  # Delete Notice
  # @param employer_id The Id of the Employer to which the DpsNotice belongs.
  # @param id The Id of the DsNotice you want to delete.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_dps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dps
  # Get Notice
  # Returns the specified DPS Notice.
  # @param employer_id 
  # @param id The Id of the DpsNotice you want to retrieve.
  # @param [Hash] opts the optional parameters
  # @return [DpsNotice]
  describe 'get_dps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dps_settings_dps
  # Get DPS Settings
  # Returns the DpsSettings for the Employer
  # @param employer_id The Id of the Employer
  # @param [Hash] opts the optional parameters
  # @return [DpsSettings]
  describe 'get_dps_settings_dps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_notices_dps
  # List Notices
  # Lists DPS Notices.
  # @param employer_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_num 
  # @option opts [Integer] :page_size 
  # @return [Array<Item>]
  describe 'list_notices_dps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for parse_xml_dps
  # Parse notices from XML
  # Checks the supplied XML string for notices. They&#x27;re then processed in the same was as if received from HMRC.  Only used for testing the parsing of DPS XML.\\n  Returns an integer showing how many new notices were found
  # @param employer_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body 
  # @return [Integer]
  describe 'parse_xml_dps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_dps_settings_dps
  # Update DPS Settings
  # Updates the DpsSettings for the Employer
  # @param employer_id The Id of the Employer
  # @param [Hash] opts the optional parameters
  # @option opts [DpsSettings] :body 
  # @return [DpsSettings]
  describe 'update_dps_settings_dps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end