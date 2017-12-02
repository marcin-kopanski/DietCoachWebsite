module RecipesHelper

  def recipe_img img, type
    if type == 'thumb'
      if img.model.thumb_image?
        img
      else
        image_generator(height: '350', width: '200')
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
