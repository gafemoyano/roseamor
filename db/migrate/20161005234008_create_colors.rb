class CreateColors < ActiveRecord::Migration[5.0]
  def change
    create_table :colors do |t|
      t.string :code, null: false

      t.timestamps
    end
    add_index :colors, :code, unique: true
  end
end
