json.extract! recipe, :id, :title, :subtitle, :body, :thumb_image, :main_image, :position, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
