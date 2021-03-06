class CastlesController < ApplicationController
  before_action :set_castle, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @castle = Castle.new
    authorize @castle
  end

  def create
    @castle = Castle.new(castle_params)
    @castle.user = current_user
    authorize @castle
    if @castle.save
      redirect_to castle_path(@castle)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @castle.update(castle_params)

    redirect_to castle_path(@castle)
  end

  def destroy
    @castle.destroy

    redirect_to root_path
  end


  private

  def set_castle
    @castle = Castle.find(params[:id])
    authorize @castle
  end

  # need to use strong params
  def castle_params
    params.require(:castle).permit(:name, :address, :photo)
  end

end
