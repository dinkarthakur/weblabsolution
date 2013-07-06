# app/controllers/inquiries_controller.rb

class InquiriesController < ApplicationController

  def index
    redirect_to(action: 'new')
  end

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(params[:inquiry])
    if @inquiry.deliver
      render :thank_you
    else
      render :new
    end
  end

end
