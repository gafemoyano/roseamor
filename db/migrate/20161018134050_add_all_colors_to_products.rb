class AddAllColorsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :all_colors, :boolean, null: false, default: true
  end
end
