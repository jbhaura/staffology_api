=begin
#Staffology Payroll API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1
Contact: duane@staffology.co.uk
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.29
=end

require 'date'

module SwaggerClient
  class RtiSenderType
    ACTING_IN_CAPACITY = 'ActingInCapacity'.freeze
    AGENT = 'Agent'.freeze
    BUREAU = 'Bureau'.freeze
    COMPANY = 'Company'.freeze
    EMPLOYER = 'Employer'.freeze
    GOVERNMENT = 'Government'.freeze
    INDIVIDUAL = 'Individual'.freeze
    OTHER = 'Other'.freeze
    PARTNERSHIP = 'Partnership'.freeze
    TRUST = 'Trust'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = RtiSenderType.constants.select { |c| RtiSenderType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #RtiSenderType" if constantValues.empty?
      value
    end
  end
end
