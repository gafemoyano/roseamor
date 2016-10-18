class AddOrderToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :order, :integer, null: false, default: 99
  end
end
