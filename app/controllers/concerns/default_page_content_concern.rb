module DefaultPageContentConcern
   extend ActiveSupport::Concern

   included do
      before_action :set_page_defaults
   end

   def set_page_defaults
      @page_title = "Dietetyk Psycholog Gdańsk"
      @seo_keywords = ""
   end
end
