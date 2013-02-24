class EventsController < ApplicationController
  before_filter :signed_in_user, only: [:new, :destroy]

  def index
  end

  def create
    @event = current_user.events.build(params[:event])
    if @micropost.save
      flash[:success] = "Appointment created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end
end
