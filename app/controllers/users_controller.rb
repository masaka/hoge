class UsersController < ApplicationController
  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.save
    redirect_to "/users/"
  end
  def index
    @users = User.all
  end
  def update
    session[:user_id] = params[:id]
    @user = User.find(params[:id])
    @user.name = params[:user][:name]
    @user.save
    redirect_to "/users/"
  end


end
