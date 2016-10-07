class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
    add_index :products, :name, unique: true
  end
end
