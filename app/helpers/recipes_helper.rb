module RecipesHelper

  def recipe_img img
    if img.model.main_image?
      img
    # elsif type == 'thumb'
    #   image_generator(height: '200', width: '350')
    else
      image_generator(height: '450', width: '730')
    end
  end
end
