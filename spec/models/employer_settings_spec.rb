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
require 'date'

# Unit tests for SwaggerClient::EmployerSettings
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EmployerSettings' do
  before do
    # run before each test
    @instance = SwaggerClient::EmployerSettings.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmployerSettings' do
    it 'should create an instance of EmployerSettings' do
      expect(@instance).to be_instance_of(SwaggerClient::EmployerSettings)
    end
  end
  describe 'test attribute "allow_negative_pay"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
