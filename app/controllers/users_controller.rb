class UsersController < ApplicationController
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
  end

  def destroy
  end
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:address,:numberphone)
  end
end
