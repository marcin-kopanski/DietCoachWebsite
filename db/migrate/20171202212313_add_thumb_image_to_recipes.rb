class AddThumbImageToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :thumb_image, :text
  end
end
