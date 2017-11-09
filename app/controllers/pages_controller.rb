class PagesController < ApplicationController
  def home
    @contact = ContactForm.new
    @featured_recipes = Recipe.featured_recipes
  end

  def about
  end

  def pricing
  end

  def offer
  end

  def contact
    @contact = ContactForm.new
  end
end
