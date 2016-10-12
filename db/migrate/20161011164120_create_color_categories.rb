class CreateColorCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :color_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
