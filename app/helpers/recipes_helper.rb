module RecipesHelper

  def image_generator(height:,width:)
    "https://placehold.it/#{height}x#{width}"
  end

  def recipe_img img, type
    if img.model.thumb_image? || img.model.main_image?
      img
    elsif type == 'thumb'
      image_generator(height: '350', width: '200')
    else
      image_generator(height: '600', width: '400')
    end
  end
end
