class RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_admin, only: [:create]

  private

  def authenticate_admin
    unless admin_authenticated?
      redirect_to root_path, alert: "管理者以外は新規登録できません。"
    end
  end

  def admin_authenticated?
    admin_password = ENV['ADMIN_PASSWORD']
    params[:user][:admin_password] == admin_password
  end
end