class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.text :visit_description
      t.datetime :visit_date
      t.references :user,  foreign_key: true
      t.references :caregiver,  foreign_key: true

      t.timestamps
    end
  end
end
