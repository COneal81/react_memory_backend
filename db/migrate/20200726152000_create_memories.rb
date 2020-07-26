class CreateMemories < ActiveRecord::Migration[6.0]
  def change
    create_table :memories do |t|
      t.string :title
      t.text :description
      t.string :date
      t.string :image_url
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
