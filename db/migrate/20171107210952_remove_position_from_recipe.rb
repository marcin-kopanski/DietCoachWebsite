class RemovePositionFromRecipe < ActiveRecord::Migration[5.1]
  def change
    remove_column :recipes, :position, :integer
  end
end
