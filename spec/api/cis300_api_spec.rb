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

# Unit tests for SwaggerClient::Cis300Api
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Cis300Api' do
  before do
    # run before each test
    @instance = SwaggerClient::Cis300Api.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Cis300Api' do
    it 'should create an instance of Cis300Api' do
      expect(@instance).to be_instance_of(SwaggerClient::Cis300Api)
    end
  end

  # unit tests for create_cis300
  # Create Cis300
  # A Cis300 is automatically created for each Tax Month that you pay a Subcontractor.\\n  You would only manually create one if you are intending to submit a nil return.
  # @param employer_id 
  # @param tax_year 
  # @param [Hash] opts the optional parameters
  # @option opts [Cis300] :body 
  # @return [Cis300]
  describe 'create_cis300 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_cis300
  # Delete Cis300
  # Not implemented, CIS300s cannot be deleted
  # @param employer_id 
  # @param tax_year 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_cis300 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_cis300
  # Get Cis300
  # Retrieves a Cis300
  # @param employer_id 
  # @param tax_year 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Cis300]
  describe 'get_cis300 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_cis300
  # List Cis300
  # Returns all Cis300s for the given tax year.
  # @param employer_id 
  # @param tax_year 
  # @param [Hash] opts the optional parameters
  # @return [Array<Item>]
  describe 'list_cis300 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for mark_as_accepted_cis300
  # Mark as Sent
  # Marks a Cis300 as having been sent to HMRC and accepted by them\\nYou only use this method if the request has been submitted via an external system.\\nIt will automatically be updated as Sent and/or Accepted if it&#x27;s submitted via this API.
  # @param employer_id 
  # @param tax_year 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Cis300]
  describe 'mark_as_accepted_cis300 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for requiring_attention_cis300
  # Cis300 Requiring Attention
  # Returns all Cis300 that have a Submission Status of NotSubmitted or ErrorResponse
  # @param employer_id 
  # @param [Hash] opts the optional parameters
  # @return [Array<Item>]
  describe 'requiring_attention_cis300 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_cis300
  # Submit Cis300
  # Submits an existing Cis300 to HMRC.
  # @param employer_id 
  # @param tax_year 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Cis300]
  describe 'submit_cis300 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_cis300
  # Update Cis300
  # Updates an existing Cis300.
  # @param employer_id 
  # @param tax_year 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [Cis300] :body 
  # @return [Cis300]
  describe 'update_cis300 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
