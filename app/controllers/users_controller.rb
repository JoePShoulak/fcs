class UsersController < ApplicationController
  def new
  end
  
  def create
    @user = User.new(params[:user])
        
    if @user.save
      UserMailer.subscribe_success(@user).deliver
      flash[:notice] = "Successfully subscribed!"
      redirect_to @user
    else
      flash[:notice] = "Email #{@user.errors.messages[:email][0]}."
      redirect_to home_path
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
end
