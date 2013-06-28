class UsersController < ApplicationController
  def new
  end
  
  def create
    @user = User.new(params[:user])
        
    if @user.save
      flash[:notice] = "Successfully subscribed."
    else
      flash[:notice] = "Invalid email."
    end
    UserMailer.subscribe_success(@user).deliver
    redirect_to @user
  end
  
  def show
    @user = User.find(params[:id])
  end
end
