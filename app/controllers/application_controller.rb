class ApplicationController < ActionController::Base
  include CurrentUserConcern

  protect_from_forgery prepend: true
end
