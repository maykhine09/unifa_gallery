class SessionsController < ApplicationController

  def new; end

  def create
    user = User.find_by(login_name: params[:session][:login_name])
    if user && user.password == params[:session][:password]
      log_in user
      redirect_to user_url(user)
    else
      render 'new'
    end
  end

  def destroy
    logout_url
    render 'new'
  end

end
