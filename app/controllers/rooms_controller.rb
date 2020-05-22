class RoomsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end
end
