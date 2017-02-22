class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      redirect_to edit_user_registration_path(@user)
    end
  end
  private
  def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :photo)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
