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

# Unit tests for SwaggerClient::FpsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FpsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::FpsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FpsApi' do
    it 'should create an instance of FpsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::FpsApi)
    end
  end

  # unit tests for create_fps
  # Create FPS
  # Creates a new Full Payment Submission.  This is limited to corrections, to a previous year, for a single employee.
  # @param employer_id 
  # @param tax_year 
  # @param [Hash] opts the optional parameters
  # @option opts [Fps] :body 
  # @return [Fps]
  describe 'create_fps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_fps
  # Delete FPS
  # Not implemented, FPSes cannot be deleted
  # @param employer_id 
  # @param tax_year 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_fps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fps
  # Get FPS
  # Retrieves the Full Payment Submission specified
  # @param employer_id 
  # @param tax_year 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Fps]
  describe 'get_fps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_fps
  # List FPS
  # Returns all Full Payment Submissions for the given tax year.
  # @param employer_id 
  # @param tax_year 
  # @param [Hash] opts the optional parameters
  # @return [Array<Item>]
  describe 'list_fps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for mark_as_accepted_fps
  # Mark as Sent
  # Marks an Full Payment Submission as having been sent to HMRC and accepted by them\\nYou only use this method if the FPS has been submitted via an external system.\\nIt will automatically be updated as Sent and/or Accepted if it&#x27;s submitted via this API.
  # @param employer_id 
  # @param tax_year 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Fps]
  describe 'mark_as_accepted_fps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for most_recent_for_employee_fps
  # Get most recent FPS for Employee
  # Returns the most recent Full Payment Submission that includes the specified employee
  # @param employer_id 
  # @param tax_year 
  # @param employee_id 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :correction Only search for FPS&#x27;s submitted as a correction to a previous year
  # @return [Item]
  describe 'most_recent_for_employee_fps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for requiring_attention_fps
  # FPS Requiring Attention
  # Returns all Full Payment Submissions that have a Submission Status of NotSubmitted or ErrorResponse
  # @param employer_id 
  # @param [Hash] opts the optional parameters
  # @return [Array<Item>]
  describe 'requiring_attention_fps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_fps
  # Submit FPS
  # Submits an existing Full Payment Submission to HMRC.
  # @param employer_id 
  # @param tax_year 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Fps]
  describe 'submit_fps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_fps
  # Update FPS
  # Updates an existing Full Payment Submission.
  # @param employer_id 
  # @param tax_year 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [Fps] :body 
  # @return [Fps]
  describe 'update_fps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
