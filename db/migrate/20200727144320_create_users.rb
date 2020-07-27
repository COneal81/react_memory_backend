class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_email
      t.string :password_digest
      t.string :family_member_email

      t.timestamps
    end
  end
end
