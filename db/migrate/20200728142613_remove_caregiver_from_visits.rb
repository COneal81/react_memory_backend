class RemoveCaregiverFromVisits < ActiveRecord::Migration[6.0]
  def change
    remove_reference :visits, :caregiver, foreign_key: true
  end
end
