class CreateCaregivers < ActiveRecord::Migration[6.0]
  def change
    create_table :caregivers do |t|
      t.string :caregiver_name
      t.string :employee_number
      t.string :company_name
      t.string :caregiver_email

      t.timestamps
    end
  end
end
