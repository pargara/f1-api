module Api
  module Season22
    class DriversController < ApplicationController
      before_action :set_driver

      def index
        render json: Driver.all
      end

      def show
        render json: @driver
      end

      def create
        @driver = Driver.new(driver_params)
        if @driver.save
          render json: driver, status: :created
        else
          render json: driver.errors, status: :unproccessable_entity
        end
      end

      def update
        if @driver.update(driver_params)
          render json: driver, status: :created
        else
          render json: driver.errors, status: :unproccessable_entity
        end
      end

      def destroy
        @driver.destroy
      end

      private

      def driver_params
        params.require(:driver).permit(:name, :nationality, :year_start, :number_podiums, :number_world_championship)
      end

      def set_driver
        @driver = Driver.find(params[:id])
      end

    end
  end
end
