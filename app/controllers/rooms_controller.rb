class RoomsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_room, only: [:show, :edit, :update, :destroy]
  def index
    @rooms = Room.all
  end

  def show
  end

  def new
    @room = Room.new
    authorize @room
  end

  def create
    # @room = current_user.rooms.build(room_params)
    @room = Room.new(room_params)
    @room.user = current_user
    authorize @room
    if @room.save
      redirect_to room_path(@room)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @room.update(room_params)
    if @room.save
      redirect_to room_path(@room)
    else
      render :edit
    end
  end

  private

  def set_room
    @room = Room.find(params[:id])
    authorize @room
  end

  def room_params
    params.require(:room).permit(:name, :adress, :superficy, :independant)
  end
end
