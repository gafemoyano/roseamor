class AddOrderToDistributors < ActiveRecord::Migration[5.2]
  def change
    add_column :distributors, :order, :integer, null: false, default: 0
  end
end
