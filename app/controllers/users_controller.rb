class UsersController < ApplicationController

  def new

  end

  def create
    user = User.new(user_params)
    if user.save
      flash[:notice] = "Thanks for signing up! Your account has been created!"
      session[:user_id] = user.id
      redirect_to '/'
    else
      flash[:alert] = "Sorry, there was a problem. Please try again."
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
