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

# Unit tests for SwaggerClient::ImportApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ImportApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ImportApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ImportApi' do
    it 'should create an instance of ImportApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ImportApi)
    end
  end

  # unit tests for create_payments_csv_mapping_import
  # Create PaymentsCsvMapping
  # Creates a new PaymentsCsvMapping for the Employer.
  # @param employer_id 
  # @param [Hash] opts the optional parameters
  # @option opts [PaymentsCsvMapping] :body 
  # @return [nil]
  describe 'create_payments_csv_mapping_import test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_payment_csv_mapping_import
  # Delete PaymentsCsvMapping
  # Deletes the specified PaymentsCsvMapping.
  # @param employer_id 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_payment_csv_mapping_import test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_payments_csv_mappings_import
  # List PaymentsCsvMappings
  # Lists all PaymentsCsvMappings for an Employer.
  # @param employer_id The Id of the Employer for which you want to list mappings
  # @param [Hash] opts the optional parameters
  # @return [Array<Item>]
  describe 'list_payments_csv_mappings_import test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for payments_csv_mapping_csv_file_import
  # Get PaymentsCsvMapping CSV File
  # Gets a CSV file in the format needed to import for the specified PaymentsCsvMapping\\n  This is only available for PaymentsCsvMapping with a Type of ColumnBased
  # @param employer_id The Id of the Employer to which the PaymentCsvMapping belongs.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [ReportResponse]
  describe 'payments_csv_mapping_csv_file_import test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for payments_csv_mapping_import
  # Get PaymentsCsvMapping
  # Gets the PaymentsCsvMapping specified.
  # @param employer_id The Id of the Employer to which the PaymentCsvMapping belongs.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [PaymentsCsvMapping]
  describe 'payments_csv_mapping_import test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_payments_csv_mapping_import
  # Update PaymentsCsvMapping
  # Updates the PaymentsCsvMapping specified.
  # @param employer_id The Id of the Employer to which the PaymentsCsvMapping belongs.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [PaymentsCsvMapping] :body 
  # @return [PaymentsCsvMapping]
  describe 'update_payments_csv_mapping_import test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
