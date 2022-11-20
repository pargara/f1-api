class TracksController < ApplicationController
  def index
    render json: Track.all, only: [:name, :length, :country]
  end

  def create
    track = Track.new(tracks_params) 
    if track.save
     render json: track, status: :created
    else
      render json: track.errors, status: :unproccessable_entity
    end
  end

  private

  def tracks_params
    params.require(:track).permit(:name, :length, :country)
  end
end
