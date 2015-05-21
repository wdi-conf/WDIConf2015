class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?, :all_speakers, :check_if_admin

  def logged_in?
    !!current_user
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def all_speakers
    speakers = Attendee.where(user_role: 'speaker')
    speakers.map do |speaker|
      User.find(speaker.user_id)
    end
  end

  def check_if_admin
    # check if they are signed in, and an admin
    unless logged_in? && current_user.admin
      redirect_to root_path, notice: "Hey, you're not supposed to be doing that... SECURITY!!!"
    end
  end

end
