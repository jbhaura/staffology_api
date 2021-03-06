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
  class PayRunCsvType
    SUMMARY = 'Summary'.freeze
    LINES = 'Lines'.freeze
    PAYROLL_CODE_AND_NAME_ONLY = 'PayrollCodeAndNameOnly'.freeze
    COLUMN_CSV_MAPPING = 'ColumnCsvMapping'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PayRunCsvType.constants.select { |c| PayRunCsvType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #PayRunCsvType" if constantValues.empty?
      value
    end
  end
end
