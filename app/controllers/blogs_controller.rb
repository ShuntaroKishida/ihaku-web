class BlogsController < ApplicationController
  before_action :authenticate_admin, only: [:create]

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    Blog.create(blog_params)
    redirect_to blogs_path
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :image, :description)
  end

  def authenticate_admin
    unless admin_authenticated?
      redirect_to root_path, alert: "管理者以外は新規登録できません。"
    end
  end

  def admin_authenticated?
    admin_password = ENV['ADMIN_PASSWORD']
    params[:blog][:admin_password] == admin_password
  end

end