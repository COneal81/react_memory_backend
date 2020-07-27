class Caregiver < ApplicationRecord
    has_many :visits
    has_many :users, through: :visits

    validates :caregiver_name, :employee_number, :company_name, :caregiver_email, presence: true
        
end
