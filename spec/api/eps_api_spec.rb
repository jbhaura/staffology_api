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

# Unit tests for SwaggerClient::EpsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EpsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::EpsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EpsApi' do
    it 'should create an instance of EpsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::EpsApi)
    end
  end

  # unit tests for create_eps
  # Create EPS
  # Creates a new Employer Payment Summary
  # @param employer_id 
  # @param tax_year 
  # @param [Hash] opts the optional parameters
  # @option opts [Eps] :body 
  # @return [Eps]
  describe 'create_eps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_eps
  # Delete Eps
  # Deletes the Eps.
  # @param employer_id 
  # @param tax_year 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_eps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_eps
  # Get EPS
  # Retrieves the Employer Payment Summary specified
  # @param employer_id 
  # @param tax_year 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Eps]
  describe 'get_eps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_eps
  # List EPS
  # Returns all Employment Payment Summaries for the given tax year.
  # @param employer_id 
  # @param tax_year 
  # @param [Hash] opts the optional parameters
  # @return [Array<Item>]
  describe 'list_eps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for mark_as_accepted_eps
  # Mark as Sent
  # Marks an Employer Payment Summary as having been sent to HMRC and accepted by them\\nYou would only use this method if the EPS had been submitted via an external system.\\nIt will automatically be updated as Sent and/or Accepted if it&#x27;s submitted via this API.
  # @param employer_id 
  # @param tax_year 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Eps]
  describe 'mark_as_accepted_eps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for recoverable_amounts_eps
  # Recoverable Amounts
  # Get all recoverable amounts (SMP, etc) for a given tax year, up to the given tax month
  # @param employer_id 
  # @param tax_year 
  # @param tax_month 
  # @param [Hash] opts the optional parameters
  # @return [RecoverableAmounts]
  describe 'recoverable_amounts_eps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for requiring_attention_eps
  # EPS Requiring Attention
  # Returns all Employer Payment Summaries that have a Submission Status of NotSubmitted or ErrorResponse
  # @param employer_id 
  # @param [Hash] opts the optional parameters
  # @return [Array<Item>]
  describe 'requiring_attention_eps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_eps
  # Submit EPS
  # Submits an existing Employment Payment Summary to HMRC.
  # @param employer_id 
  # @param tax_year 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Eps]
  describe 'submit_eps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_eps
  # Update EPS
  # Updates an existing Employment Payment Summary.
  # @param employer_id 
  # @param tax_year 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [Eps] :body 
  # @return [Eps]
  describe 'update_eps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end