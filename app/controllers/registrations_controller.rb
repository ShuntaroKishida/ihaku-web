class RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_with_basic_auth, only: [:new, :create]

  private

  def authenticate_with_basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end