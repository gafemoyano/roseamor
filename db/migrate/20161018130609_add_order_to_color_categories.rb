class AddOrderToColorCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :color_categories, :order, :integer, null: false, default: 99
  end
end
