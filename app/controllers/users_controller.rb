class UsersController < ApplicationController
  def new
    @user = User.new
    render(:new)
  end
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_path(@user)
    else
      render(:new)
    end
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :facebook_account, :twitter_account, :password, :password_confirmation)
  end

end