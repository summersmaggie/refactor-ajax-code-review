class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      flash[:notice] = "Welcome back!"
      session[:user_id] = user.id
      redirect_to '/'
    else
      flash[:alert] = "Sorry, we don't recognize that account. Please try again."
      redirect_to '/sign_in'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/sign_in'
    flash[:notice] = "Thanks for stopping by. Hope to see you again soon."
  end

end
