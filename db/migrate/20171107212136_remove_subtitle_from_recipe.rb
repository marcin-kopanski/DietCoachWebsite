class RemoveSubtitleFromRecipe < ActiveRecord::Migration[5.1]
  def change
    remove_column :recipes, :subtitle, :string
  end
end
