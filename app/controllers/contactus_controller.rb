class ContactusController < ApplicationController
  def index
    @contact_us = Contactus.new
  end

  def new
    redirect_to(action: 'index')
  end

  def create
    @contact_us = Contactus.new(params[:contactus])
    if @contact_us.validate
      Contactusmailer.send_mail(@contact_us).deliver
      flash[:notice] = "Thank-you, We will contact you shortly."
    else
      flash[:error] = "Oops!!! Something went wrong. Your mail was not sent."
    end
    render :index
  end
end
