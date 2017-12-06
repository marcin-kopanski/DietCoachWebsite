module DefaultPageContentConcern
   extend ActiveSupport::Concern

   included do
      before_action :set_page_defaults
   end

   def set_page_defaults
      @page_title = "Dietetyk Psycholog Gdańsk"
      @page_description = "Poradnia dietetyczna w Gdańsku, układanie diet, doradztwo żywieniowe, motywacja"
      @seo_keywords = "dietetyk, dietetyk gdańsk, trójmiasto, dieta, odchudzanie, równowaga"
   end
end
