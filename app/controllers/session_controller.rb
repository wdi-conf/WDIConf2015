# Session links to the directory in views

class SessionController < ApplicationController

  #logging in
  def create
    @user = User.find_by(email: params[:email])

    #check if we have @user
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      # correct password
      redirect_to user_path(@user.id)
    else
      # incorrect email or password
      redirect_to :back, :notice => "Login was unsuccessful. Please try again."
    end
  end

  #logging out
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end