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

# Unit tests for SwaggerClient::AuthScheme
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthScheme' do
  before do
    # run before each test
    @instance = SwaggerClient::AuthScheme.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthScheme' do
    it 'should create an instance of AuthScheme' do
      expect(@instance).to be_instance_of(SwaggerClient::AuthScheme)
    end
  end
end