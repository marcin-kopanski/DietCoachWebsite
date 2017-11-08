module BlogsHelper
  def gravatar_helper user
    image_tag "https://www.gravatar.com/avatar/#{ Digest::MD5.hexdigest(user.email)}", width: 60
  end

  def blog_status_color(blog)
    "color: red;" if blog.draft?
  end

  def blog_img img
    if img.model.main_image?
      img
    else
      image_generator(height: '400', width: '600')
    end
  end
end
