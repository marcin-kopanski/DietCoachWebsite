class ApplicationController < ActionController::Base
  include CurrentUserConcern
  include DefaultPageContentConcern

  protect_from_forgery prepend: true
end
