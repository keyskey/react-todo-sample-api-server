class Api::V1::ScreensController < ApplicationController
  def index
    @screens = Screen.all

    render json: @screens
  end
end
