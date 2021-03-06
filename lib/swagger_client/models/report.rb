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
  class Report
    GROSS_TO_NET = 'GrossToNet'.freeze
    GROSS_TO_NET_CIS = 'GrossToNetCis'.freeze
    PAYRUN_PAYMENTS = 'PayrunPayments'.freeze
    FURLOUGH = 'Furlough'.freeze
    PENSION_CONTRIBS = 'PensionContribs'.freeze
    JOURNAL = 'Journal'.freeze
    HOURLY_PAY = 'HourlyPay'.freeze
    UMBRELLA_RECONCILIATION = 'UmbrellaReconciliation'.freeze
    UMBRELLA_STATEMENT = 'UmbrellaStatement'.freeze
    STATUTORY_PAY = 'StatutoryPay'.freeze
    COST_ANALYSIS = 'CostAnalysis'.freeze
    COST_OF_EMPLOYMENT = 'CostOfEmployment'.freeze
    FULL_SUMMARY_OF_PAY = 'FullSummaryOfPay'.freeze
    P11 = 'P11'.freeze
    P11D = 'P11d'.freeze
    P30 = 'P30'.freeze
    P32 = 'P32'.freeze
    P45 = 'P45'.freeze
    P60 = 'P60'.freeze
    EMPLOYEE_EXPORT = 'EmployeeExport'.freeze
    RIGHT_TO_WORK = 'RightToWork'.freeze
    AEO_STATEMENT = 'AeoStatement'.freeze
    HOLIDAY_ALLOWANCES = 'HolidayAllowances'.freeze
    HOLIDAY_PAY_ACCRUALS = 'HolidayPayAccruals'.freeze
    AE_ASSESSMENTS = 'AeAssessments'.freeze
    CIS_STATEMENT = 'CisStatement'.freeze
    SUBCONTRACTOR_SUMMARY = 'SubcontractorSummary'.freeze
    PAYROLL_ANALYSIS = 'PayrollAnalysis'.freeze
    VARIANCE_REPORT = 'VarianceReport'.freeze
    P11_DETAILED = 'P11Detailed'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = Report.constants.select { |c| Report::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #Report" if constantValues.empty?
      value
    end
  end
end
