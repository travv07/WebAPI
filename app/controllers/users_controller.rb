class UsersController < ApplicationController
  before_action :find_id, only: [:edit,:show,:update,:destroy] 
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit

  end

  def show
  end

  def update
    if @user.update user_full_params
      redirect_to users_admin_path
    else 
      render :edit
    end
  end

  def destroy
  end
  def find_id
    @user = User.find_by id: params[:id]
  end
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:address,:numberphone)
  end
  def user_full_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:address,:numberphone,:role)
  end
end
