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
  class ProRataRule
    WORKING_DAYS_IN_PERIOD = 'WorkingDaysInPeriod'.freeze
    TWO_SIXTY_RULE = 'TwoSixtyRule'.freeze
    THREE_SIX_FIVE_RULE = 'ThreeSixFiveRule'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ProRataRule.constants.select { |c| ProRataRule::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ProRataRule" if constantValues.empty?
      value
    end
  end
end
