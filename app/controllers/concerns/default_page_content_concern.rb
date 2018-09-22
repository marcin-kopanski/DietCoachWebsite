module DefaultPageContentConcern
   extend ActiveSupport::Concern

   included do
      before_action :set_page_defaults
   end

   def set_page_defaults
      @page_title = "Dietetyk Gdańsk Wrzeszcz - Gabinet Równowaga"
      @page_description = "Potrzebujesz indywidualnej diety? Mieszkasz w Gdańsku? dietetyk-rownowaga.gda.pl jest tym czego szukasz! Zdrowe odżywianie potrafi być tanie!"
      @seo_keywords = "dietetyk, dietetyk gdańsk, dietetyk gdańsk wrzeszcz, dieta, odchudzanie, równowaga, Patrycja Piekarczyk"
   end
end
