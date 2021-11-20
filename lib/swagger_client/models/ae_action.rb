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
  class AeAction
    NO_CHANGE = 'NoChange'.freeze
    ENROL = 'Enrol'.freeze
    EXIT = 'Exit'.freeze
    INCONCLUSIVE = 'Inconclusive'.freeze
    POSTPONE = 'Postpone'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = AeAction.constants.select { |c| AeAction::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #AeAction" if constantValues.empty?
      value
    end
  end
end