class RemoveThumbImageFromRecipe < ActiveRecord::Migration[5.1]
  def change
    remove_column :recipes, :thumb_image, :text
  end
end
