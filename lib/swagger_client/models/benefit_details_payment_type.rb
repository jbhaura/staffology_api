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
  class BenefitDetailsPaymentType
    OTHER = 'Other'.freeze
    SEASON_TICKETS = 'SeasonTickets'.freeze
    PRIVATE_CAR_EXPENSES = 'PrivateCarExpenses'.freeze
    PRIVATE_EDUCATION = 'PrivateEducation'.freeze
    ACCOUNTANCY_FEES = 'AccountancyFees'.freeze
    DOMESTIC_BILLS = 'DomesticBills'.freeze
    MULTIPLE = 'Multiple'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = BenefitDetailsPaymentType.constants.select { |c| BenefitDetailsPaymentType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #BenefitDetailsPaymentType" if constantValues.empty?
      value
    end
  end
end
