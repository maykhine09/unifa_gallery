class UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
    @photos = @user.photos
  end

end
