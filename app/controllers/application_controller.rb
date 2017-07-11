class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



# Overwriting the sign_out redirect path method
  # def after_sign_out
  #   root_url
  # end
end
