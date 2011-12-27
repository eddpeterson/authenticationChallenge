class SessionsController < ApplicationController
  def new
  end

  def create
    user = warden.authenticate
    if user 
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = warden.message
      render "new"
    end
  end

  def destroy
    warden.logout
    redirect_to root_url, :notice => "Logged out!"
  end
end