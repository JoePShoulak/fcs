class UsersController < ApplicationController
  def new
  end
  
  def create
    @user = User.new(email: params[:email])

    @user.save
    redirect_to @user
  end

end
