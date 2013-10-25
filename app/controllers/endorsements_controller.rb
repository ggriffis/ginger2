class EndorsementsController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(params[:inquiry])
    @inquiry.subject_type = "Endorsement"
    if @inquiry.deliver
      flash[:notice] = "Thank you! Your endorsement has been sent and I will post it as soon as possible."
      render :thank_you2
    else
      render :new
    end
  end
end
