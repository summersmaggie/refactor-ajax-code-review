class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      flash[:notice] = "Thanks for signing up! Your account has been created!"
      session[:user_id] = user.id
      redirect_to '/'
    else
      flash[:alert] = "Sorry, there was an error. Please try again."
      redirect_to sign_up_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
