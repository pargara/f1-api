class DriversController < ApplicationController
  def index
    render json: Driver.all
  end
end
