class PagesController < ApplicationController
  def home
    @featured_recipes = Recipe.featured_recipes
  end

  def about
  end

  def pricing
  end

  def offer
  end

  def contact
  end
end
