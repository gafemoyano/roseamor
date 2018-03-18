class CreateFaqs < ActiveRecord::Migration[5.0]
  def change
    create_table :faqs do |t|
      t.text :question, null: false, default: ""
      t.text :answer, null: false, default: ""
      t.integer :order, null: false, default: 0

      t.timestamps
    end
  end
end
