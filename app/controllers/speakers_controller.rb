class SpeakersController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @speaker = @event.speakers.create(speaker_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:event_id])
    @speaker = @event.speakers.find(params[:id])
    @speaker.destroy
    redirect_to event_path(@event)
  end

  private
  def speaker_params
    params.require(:speaker).permit(:name, :bio, :profile_url, :profile_pic)
  end

end
