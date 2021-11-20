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
  class BenefitDetailsClass1AType
    OTHER = 'Other'.freeze
    MULTIPLE = 'Multiple'.freeze
    STOP_LOSS_CHARGES = 'StopLossCharges'.freeze
    NON_QUALIFYING_RELOCATION_BENEFIT = 'NonQualifyingRelocationBenefit'.freeze
    EDUCATIONAL_ASSITANCE = 'EducationalAssitance'.freeze
    SUBSCRIPTIONS_AND_FEES = 'SubscriptionsAndFees'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = BenefitDetailsClass1AType.constants.select { |c| BenefitDetailsClass1AType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #BenefitDetailsClass1AType" if constantValues.empty?
      value
    end
  end
end
