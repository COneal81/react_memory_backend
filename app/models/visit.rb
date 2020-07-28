class Visit < ApplicationRecord
  belongs_to :user
  belongs_to :caregiver

  validates :visit_description, :visit_date, :user, :caregiver, presence: :true

  
end
