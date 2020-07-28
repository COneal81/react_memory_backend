class VisitSerializer
  include FastJsonapi::ObjectSerializer
  attributes :visit_description, :visit_date, :user_id, :user, :caregiver_id, :caregiver
end


