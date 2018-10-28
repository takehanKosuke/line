class Admin::BaseController < ActionController::Base
  http_basic_authenticate_with name: "line", password: "line"
  layout 'admin'
end
