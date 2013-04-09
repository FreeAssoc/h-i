include ActionController::HttpAuthentication::Basic::ControllerMethods

class V1::BaseController < ApplicationController

  before_filter :http_basic_authenticate

  def http_basic_authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "HIAPI" && password == "$tockh0lm"
    end
  end

end
