class CreateDistributors < ActiveRecord::Migration[5.0]
  def change
    create_table :distributors do |t|
      t.string :name, null: false
      t.string :phone
      t.string :phone2
      t.string :phone3
      t.string :mail
      t.string :website
      t.string :address
      t.string :logo_url

      t.timestamps
    end
    add_index :distributors, :name
  end
end
