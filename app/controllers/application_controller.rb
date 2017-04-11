class ApplicationController < ActionController::Base
  
  
  protect_from_forgery with: :exception

  http_basic_authenticate_with name: ENV["ADMIN_UNAME"], password: ENV["ADMIN_PASS"]

  #http_basic_authenticate_with name: ENV['ADMIN_UNAME'], password: ENV['ADMIN_PASS']
  #before_filter :authenticate

  #protected
  #def authenticate
  #  authenticate_or_request_with_http_basic do |username, password|
  #    username == ENV['ADMIN_UNAME'] && password == ENV['ADMIN_PASS']
  #  end
  #end

end
