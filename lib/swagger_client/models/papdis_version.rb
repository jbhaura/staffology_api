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
  class PapdisVersion
    PAP10 = 'PAP10'.freeze
    PAP11 = 'PAP11'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PapdisVersion.constants.select { |c| PapdisVersion::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #PapdisVersion" if constantValues.empty?
      value
    end
  end
end
