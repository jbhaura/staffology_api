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

# Unit tests for SwaggerClient::OverseasSecondmentStatus
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OverseasSecondmentStatus' do
  before do
    # run before each test
    @instance = SwaggerClient::OverseasSecondmentStatus.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OverseasSecondmentStatus' do
    it 'should create an instance of OverseasSecondmentStatus' do
      expect(@instance).to be_instance_of(SwaggerClient::OverseasSecondmentStatus)
    end
  end
end