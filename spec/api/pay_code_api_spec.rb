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

# Unit tests for SwaggerClient::PayCodeApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PayCodeApi' do
  before do
    # run before each test
    @instance = SwaggerClient::PayCodeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PayCodeApi' do
    it 'should create an instance of PayCodeApi' do
      expect(@instance).to be_instance_of(SwaggerClient::PayCodeApi)
    end
  end

  # unit tests for create_pay_code
  # Create PayCode
  # Creates a new PayCode for the Employer.
  # @param employer_id 
  # @param [Hash] opts the optional parameters
  # @option opts [PayCode] :body 
  # @return [PayCode]
  describe 'create_pay_code test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_pay_code
  # Delete PayCode
  # Deletes the specified PayCode.
  # @param employer_id 
  # @param code 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_pay_code test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_pay_code
  # Get PayCode
  # Gets the PayCode specified.
  # @param employer_id The Id of the Employer to which the Pay Code belongs.
  # @param code The code of the Pay Code you want to retrieve.
  # @param [Hash] opts the optional parameters
  # @return [PayCode]
  describe 'get_pay_code test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for index_pay_code
  # List PayCodes
  # Lists all PayCodes for the Employer specified.
  # @param employer_id The Id of the Employer for which you want to list Pay Codes
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :verbose If provided and set to true then full details of all Pay Codes will be returned insead of just a summary
  # @return [Array<PayCode>]
  describe 'index_pay_code test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for nominal_code_mappings_pay_code
  # Get Nominal Code Mappings
  # Returns the list of mappings of PayCodes to NominalCodes
  # @param employer_id The Id of the Employer for which you want to get the mapping
  # @param [Hash] opts the optional parameters
  # @return [Array<NominalCodeMapping>]
  describe 'nominal_code_mappings_pay_code test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_nominal_code_mappings_pay_code
  # Updates Nominal Code Mappings
  # Updates the list of mappings of PayCodes to NominalCodes
  # @param employer_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<NominalCodeMapping>] :body 
  # @return [Array<NominalCodeMapping>]
  describe 'update_nominal_code_mappings_pay_code test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_pay_code
  # Update PayCode
  # Updates the details of an existing PayCode.
  # @param employer_id 
  # @param code 
  # @param [Hash] opts the optional parameters
  # @option opts [PayCode] :body 
  # @return [PayCode]
  describe 'update_pay_code test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
