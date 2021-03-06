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

# Unit tests for SwaggerClient::EmployerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EmployerApi' do
  before do
    # run before each test
    @instance = SwaggerClient::EmployerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmployerApi' do
    it 'should create an instance of EmployerApi' do
      expect(@instance).to be_instance_of(SwaggerClient::EmployerApi)
    end
  end

  # unit tests for apply_year_end_employer
  # Make Year End Changes
  # Apply the changes for the year end and start the next tax year for the employer.
  # @param id The Id of the Employer
  # @param [Hash] opts the optional parameters
  # @option opts [Hash<String, null>] :body You can suppress the emailing of P60s and/or CIS Statements by supplying a value of true for dontEmailP60s and/or dontEmailCisStatements
  # @return [YearEnd]
  describe 'apply_year_end_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for calendar_employer
  # Get Employer Calendar
  # Get a list of upcoming CalendarEntry for the Employer.
  # @param id The Id of the Employer.
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :from 
  # @option opts [DateTime] :to 
  # @return [Array<CalendarEntry>]
  describe 'calendar_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_employer
  # Create an Employer
  # Use this method to create a new Employer\\n  The only required field is the Employer name.
  # @param [Hash] opts the optional parameters
  # @option opts [Employer] :body 
  # @return [Employer]
  describe 'create_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for custom_payslip_employer
  # Get Payslip Customisations
  # Get the settings used to customise PaySlips for this Employer
  # @param id The Id of the Employer you want customisations for.
  # @param [Hash] opts the optional parameters
  # @return [PayslipCustomisation]
  describe 'custom_payslip_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_employer
  # Delete an Employer
  # @param id The Id of the Employer you want to delete.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for employer_direct_debit_mandate_required_employer
  # Get DirectDebitMandate
  # Returns whether Direct Debit Mandate Activation for the owner of the current employer is required.
  # @param id The Id of the Employer whose Direct Debit Mandate you want to retrieve.
  # @param [Hash] opts the optional parameters
  # @return [BOOLEAN]
  describe 'employer_direct_debit_mandate_required_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_automation_settings_employer
  # Get Automation Settings
  # Returns the AutomationSettings for the Employer
  # @param id The Id of the Employer
  # @param [Hash] opts the optional parameters
  # @return [AutomationSettings]
  describe 'get_automation_settings_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_employer
  # Get an Employer
  # @param id The Id of the Employer you want to retrieve.
  # @param [Hash] opts the optional parameters
  # @return [Employer]
  describe 'get_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_employer_opening_balances_employer
  # Get EmployerOpeningBalances
  # Returns the EmployerOpeningBalances for the Employer
  # @param id The Id of the Employer
  # @param [Hash] opts the optional parameters
  # @return [EmployerOpeningBalances]
  describe 'get_employer_opening_balances_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_group_memberships_employer
  # Get Employer Groups
  # @param id The Id of the Employer you want to retrieve Groups for.
  # @param [Hash] opts the optional parameters
  # @return [Array<EmployerGroupMembership>]
  describe 'get_group_memberships_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for import_csv_employer
  # Import CSV
  # Import employers from a CSV file.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :file 
  # @option opts [BOOLEAN] :preview_only Set to true and nothing will be imported but you&#x27;ll be shown a preview of the data.
  # @return [Array<Item>]
  describe 'import_csv_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for index_employer
  # List Employers
  # @param [Hash] opts the optional parameters
  # @option opts [String] :employer_group_code Optionally specify the code of an EmployerGroup to only see employers that are a member of that group.
  # @return [Array<Item>]
  describe 'index_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_users_employer
  # List Users
  # Returns a list of Users that have access to the given Employer
  # @param id The Id of the Employer you want a list of Users for.
  # @param [Hash] opts the optional parameters
  # @return [Array<Item>]
  describe 'list_users_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_user_employer
  # Remove User
  # Removes a User from an Employer.\\n  You cannot remove Users that are marked as the owner of the Employer.  You must be the owner of the Employer in order to remove other Users.
  # @param id The Id of the Employer you want to remove the User from.
  # @param user_id The Id of the User you want to remove.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_user_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for review_year_end_employer
  # Review Year End Changes
  # View the changes that will be made when you start the next tax year for the employer
  # @param id The Id of the Employer
  # @param [Hash] opts the optional parameters
  # @return [YearEnd]
  describe 'review_year_end_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for rti_requiring_attention_employer
  # RTI Documents Requiring Attention
  # Returns all RTI documents that have a Submission Status of NotSubmitted or ErrorResponse
  # @param id The Id of the Employer
  # @param [Hash] opts the optional parameters
  # @return [Array<Item>]
  describe 'rti_requiring_attention_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_employees_employer
  # Search Employees
  # Search all employers for an employee based on their name or payroll code.\\nEnsure your query is at least 3 characters long or you wont get any results.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :query The search string (at least 3 characters).
  # @option opts [BOOLEAN] :exlude_cis_sub_contactors If set to true, then we&#x27;ll only search employees that aren&#x27;t labeled as CIS Subcontractors
  # @return [Array<Item>]
  describe 'search_employees_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_employer
  # Search Employers
  # @param [Hash] opts the optional parameters
  # @option opts [String] :query 
  # @return [Array<Item>]
  describe 'search_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_group_memberships_employer
  # Set Employer Groups
  # @param id The Id of the Employer you want to set Groups for.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<EmployerGroupMembership>] :body 
  # @return [Array<EmployerGroupMembership>]
  describe 'set_group_memberships_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_owner_employer
  # Set Owner
  # Sets the owner for the employer.\\n  You must be the owner of the Employer to set this value.\\n  The user you are setting as the owner must already have the role Admin.\\n  You can get a list of users from the ListUsers endpoint.
  # @param id The Id of the Employer you want to change the ownership of.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body The Id of the User you want a change ownership to. They must already be a user for this employer and have the admin role assigned to them.
  # @return [nil]
  describe 'set_owner_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for suggest_pay_code_employer
  # Suggest Payroll Code
  # This helper method returns a unique code for the next Employee that you create for the specified Employer.\\nYou don&#x27;t have to use the value provided, you can use any value that is unqiue across Employees for the Employer.
  # @param id The Id of the Employer you want a suggestion for.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'suggest_pay_code_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_automation_settings_employer
  # Update Automation Settings
  # Updates the AutomationSettings for the Employer
  # @param id The Id of the Employer
  # @param [Hash] opts the optional parameters
  # @option opts [AutomationSettings] :body 
  # @return [AutomationSettings]
  describe 'update_automation_settings_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_custom_payslip_employer
  # Update Payslip Customisations
  # Set the settings used to customise PaySlips for this Employer
  # @param id The Id of the Employer you want customisations for.
  # @param [Hash] opts the optional parameters
  # @option opts [PayslipCustomisation] :body 
  # @return [PayslipCustomisation]
  describe 'update_custom_payslip_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_employer
  # Update an Employer
  # @param id The Id of the Employer you want to update.
  # @param [Hash] opts the optional parameters
  # @option opts [Employer] :body 
  # @return [Employer]
  describe 'update_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_employer_opening_balances_employer
  # Update EmployerOpeningBalances
  # Updates the EmployerOpeningBalances for the Employer for their StartYear
  # @param id The Id of the Employer
  # @param [Hash] opts the optional parameters
  # @option opts [EmployerOpeningBalances] :body 
  # @return [EmployerOpeningBalances]
  describe 'update_employer_opening_balances_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_logo_employer
  # Update Employer Logo
  # If you already have a URL for the employer Logo then you can just set the LogoUrl property of the Employer.\\n  Alternatively, submit a logo here and we&#x27;ll upload it and set the LogoUrl for you.
  # @param id The Id of the Employer you want to update.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :file 
  # @return [Employer]
  describe 'update_logo_employer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
