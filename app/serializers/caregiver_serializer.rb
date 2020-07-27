class CaregiverSerializer
  include FastJsonapi::ObjectSerializer
  attributes :caregiver_name, :employee_number, :company_name, :caregiver_email
end
