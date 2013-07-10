class EmailsController < ApplicationController
  http_basic_authenticate_with name: 'Preston Gunderson', password: 'Joe'
  def index
  end

  def new
  end

  def create
    @email = Email.new(params[:emails])
    if @email.save
      User.all.each do |u|
        UserMailer.update(u, @email).deliver
      end
      flash[:notice] = 'Update sent'
      redirect_to '/emails'
    else
      flash[:notice] = "#{@email.errors.messages.keys[0].capitalize} can't be blank."
    end
  end
end
