module TeamManager
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    layout 'layouts/application'
  end
end
