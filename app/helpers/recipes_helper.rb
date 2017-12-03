module RecipesHelper

  def recipe_img img, type
    if type == 'thumb'
      if img.model.thumb_image?
        img
      else
        image_generator(height: '200', width: '350')
      end
    else
      if img.model.thumb_image?
        img
      else
        image_generator(height: '450', width: '730')
      end
    end
  end
end
