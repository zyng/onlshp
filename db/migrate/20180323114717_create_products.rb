class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :long_description
      t.string :text
      t.string :photo
      t.decimal :price
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
