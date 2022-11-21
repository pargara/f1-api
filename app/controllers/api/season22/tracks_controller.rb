module Api
  module Season22
    class TracksController < ApplicationController
      before_action :set_track
      def index
        render json: Track.all, only: [:name, :length, :country]
      end
      
      def show
        render json: @track
      end

      def create
        track = Track.new(tracks_params) 
        if track.save
         render json: track, status: :created
        else
          render json: track.errors, status: :unproccessable_entity
        end
      end

      def update
        if @track.update(tracks_params)
          render json: track, status: :created
        else
          render json: track, status: :unproccessable_entity
        end
      end

      def destroy
        @driver.destroy
      end

      private

      def tracks_params
        params.require(:track).permit(:name, :length, :country)
      end

      def set_track
        @track = Track.find(params[:id])
      end

    end
  end
end
