class AddCountryCodeToDistributor < ActiveRecord::Migration[5.0]
  def change
    add_column :distributors, :country_code, :string, null: false
  end
end
