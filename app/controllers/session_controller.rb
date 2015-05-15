# Session links to the directory in views

class SessionController < ApplicationController

  #login form
  def new
    
  end

  #logging in
  def create
    @user = User.find_by(email: params[:email])

#check if we have @user 
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      # correct password
      redirect_to root_path # same as routing to '/'
    else
      #incorrect email or password
      render :new
    end
  end

  #logging out
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end