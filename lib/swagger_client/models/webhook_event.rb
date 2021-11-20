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
  class WebhookEvent
    EMPLOYEE_CREATED = 'Employee_Created'.freeze
    EMPLOYEE_UPDATED = 'Employee_Updated'.freeze
    EMPLOYEE_DELETED = 'Employee_Deleted'.freeze
    PAYRUN_FINALISED = 'Payrun_Finalised'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = WebhookEvent.constants.select { |c| WebhookEvent::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #WebhookEvent" if constantValues.empty?
      value
    end
  end
end
