class ApplicationController < ActionController::Base
  before_action :authenticate

  def authenticated?
    @authenticated
  end

  private

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      if username == ENV["USERNAME"] && password == ENV["PASSWORD"]
        @user = User.find_or_create_by!(username: username)
        return true
      end

      false
    end
  end
end
