class RemoveUserFromVisits < ActiveRecord::Migration[6.0]
  def change
    remove_reference :visits, :user, foreign_key: true
  end
end
