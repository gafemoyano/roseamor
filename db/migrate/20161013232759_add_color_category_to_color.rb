class AddColorCategoryToColor < ActiveRecord::Migration[5.0]
  def change
    add_reference :colors, :color_category, foreign_key: true
  end
end
