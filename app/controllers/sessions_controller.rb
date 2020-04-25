# frozen_string_literal: true

# :nodoc:
class SessionsController < ApplicationController

  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

  def delete
    User.find(session[:user_id]).destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end