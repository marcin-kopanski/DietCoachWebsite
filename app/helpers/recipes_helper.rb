module RecipesHelper

  def recipe_img img, type
    if img.model.thumb_image? || img.model.main_image?
      img
    elsif type == 'thumb'
      image_generator(height: '200', width: '350')
    else
      image_generator(height: '600', width: '1080')
    end
  end
end
