class RemoveDescriptionFromRecipe < ActiveRecord::Migration[5.1]
  def change
    remove_column :recipes, :description, :text
  end
end
