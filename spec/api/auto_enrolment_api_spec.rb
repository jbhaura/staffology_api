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

# Unit tests for SwaggerClient::AutoEnrolmentApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AutoEnrolmentApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AutoEnrolmentApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AutoEnrolmentApi' do
    it 'should create an instance of AutoEnrolmentApi' do
      expect(@instance).to be_instance_of(SwaggerClient::AutoEnrolmentApi)
    end
  end

  # unit tests for assess_auto_enrolment
  # Assess Employee for AutoEnrolment
  # Asseses an Employee for AutoEnrolment
  # @param employer_id The Id of the Employer to which the Employee belongs
  # @param employee_id The Id of the Employee you want to assess
  # @param [Hash] opts the optional parameters
  # @return [AeAssessment]
  describe 'assess_auto_enrolment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_auto_enrolment
  # Delete AE Assessment
  # Deletes the AeAssessment specified by the Id for the Employee specified by the EmployeeId.
  # @param employer_id The Id of the Employer to which the Employee belongs
  # @param employee_id The Id of the Employee the assessment is for
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id The Id of the Assessment.
  # @return [nil]
  describe 'delete_auto_enrolment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for email_letter_auto_enrolment
  # Email Letter
  # Send via email letter that needs to be sent to an employee as a result of the assessment.\\n  The letter is then marked as having been sent.
  # @param employer_id The Id of the Employer to which the Employee belongs
  # @param employee_id The Id of the Employee the assessment is for
  # @param id The Id of the Assessment
  # @param [Hash] opts the optional parameters
  # @return [EmployerEmail]
  describe 'email_letter_auto_enrolment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_auto_enrolment
  # Get AE Assessment
  # Returns the specified AeAssessment for the specified Employee
  # @param employer_id The Id of the Employer to which the Employee belongs
  # @param employee_id The Id of the Employee the assessment is for
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id The Id of the Assessment.
  # @return [AeAssessment]
  describe 'get_auto_enrolment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_last_auto_enrolment
  # Get Last AE Assessment
  # Returns the most recent AeAssessment for an Employee
  # @param employer_id The Id of the Employer to which the Employee belongs
  # @param employee_id The Id of the Employee the assessment is for
  # @param [Hash] opts the optional parameters
  # @return [AeAssessment]
  describe 'get_last_auto_enrolment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_letter_auto_enrolment
  # Get Letter
  # Returns either a PDF or HTML (depending on accept header)   of the letter that needs to be sent to an employee as a result of the assessment.\\n  The same ReportResponse model that is used for reports is used here.
  # @param employer_id The Id of the Employer to which the Employee belongs
  # @param employee_id The Id of the Employee the assessment is for
  # @param id The Id of the Assessment
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept 
  # @return [ReportResponse]
  describe 'get_letter_auto_enrolment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_auto_enrolment
  # Get AE Assessments
  # Returns all AE Assessments for the Employee specified.
  # @param employer_id The Id of the Employer to which the Employee belongs
  # @param employee_id The Id of the Employee for which you want to retrieve AE Assessments
  # @param [Hash] opts the optional parameters
  # @return [Array<Item>]
  describe 'list_auto_enrolment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for mark_letter_as_sent_auto_enrolment
  # Mark Letter as Sent
  # Update an Assessment to mark the letter as sent.\\n  This is done automatically if you send the letter via email so you&#x27;d  only need to use this is you are printing/posting the letter.
  # @param employer_id The Id of the Employer to which the Employee belongs
  # @param employee_id The Id of the Employee the assessment is for
  # @param id The Id of the Assessment
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'mark_letter_as_sent_auto_enrolment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for pending_letters_auto_enrolment
  # Pending Letters
  # Returns all AE Assessments that are awaiting a letter to be sent
  # @param employer_id The Id of the Employer
  # @param [Hash] opts the optional parameters
  # @return [Array<Item>]
  describe 'pending_letters_auto_enrolment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for pending_postponement_letters_auto_enrolment
  # Pending Postponement Letters
  # Returns all employees that are awaiting a postponement letter to be sent.\\n  Because there is no associated AeAssessment they can&#x27;t be returned with the other pending letters
  # @param employer_id The Id of the Employer
  # @param [Hash] opts the optional parameters
  # @return [Array<Item>]
  describe 'pending_postponement_letters_auto_enrolment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reenrol_auto_enrolment
  # Cyclical Re-enrolment
  # Performs a Cyclical Re-enrolment. All employees that have opted-out or ceased membership    will be re-assessed and auto-enrolled if necessary.\\n  The employers cyclical re-enrolment date will then be updated to the date provided.
  # @param employer_id The Id of the Employer
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :cyclical_reenrolment_date The new Cyclical Re-enrolment Date for the  Employer
  # @return [Array<Item>]
  describe 'reenrol_auto_enrolment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_state_auto_enrolment
  # Update State
  # Updates the AutoEnrolment state for an Employee.\\n   You would use this API call to process notices such as Opt Out, Opt In, etc.\\n  A new assessment is returned showing the result of the state change.
  # @param employer_id The Id of the Employer to which the Employee belongs
  # @param employee_id The Id of the Employee you want to set the status for
  # @param [Hash] opts the optional parameters
  # @option opts [AeEmployeeState] :state The AutoEnrolment State to set for the Employee
  # @option opts [AeStatus] :status 
  # @option opts [DateTime] :state_date Optional. Will default to the current date
  # @option opts [String] :pension_id Optional. Used to override the default AE Pension. Only valid with states of Enrol, VoluntaryJoiner or OptIn
  # @option opts [String] :worker_group_id Optional. Used to override the default AE Pension Workergroup. Only valid with states of Enrol, Join or OptIn. Must be provided if a pensionId is being provided.
  # @return [AeAssessment]
  describe 'set_state_auto_enrolment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end