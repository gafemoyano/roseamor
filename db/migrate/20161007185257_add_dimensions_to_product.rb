class AddDimensionsToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :diameter, :decimal, null: false, default: 0
    add_column :products, :height, :decimal, null: false, default: 0
  end
end
