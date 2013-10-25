class InquiriesController < ApplicationController

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(params[:inquiry])
    @inquiry.subject_type = "Inquiry"
    if @inquiry.deliver
      flash[:notice] = "Thank you! Your inquiry has been sent and I'll be in touch as soon as possible."
      render :thank_you
    else
      render :new
    end
  end
end
