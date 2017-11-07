class AddSubtitleToRecipe < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :subtitle, :text
  end
end
