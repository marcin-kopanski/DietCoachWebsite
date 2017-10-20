class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.text :thumb_image
      t.text :main_image
      t.integer :position

      t.timestamps
    end
  end
end
