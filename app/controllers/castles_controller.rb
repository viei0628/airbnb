class CastlesController < ApplicationController
  def show
    @castle = Castle.find(params[:id])
  end

  def new
    @castle = Castle.new
  end

  def create
    @castle = Castle.new(castle_params)
    @castle.save

    redirect_to castle_path(@castle)
  end

  def edit
    @castle = Castle.find(params[:id])
  end

  def update
    @castle = Castle.find(params[:id])
    @castle.update(castle_params)

    redirect_to root_path
  end

  def destroy
    @castle = Castle.find(params[:id])
    @castle.destroy

    redirect_to root_path
  end

  # need to use strong params
  def castle_params
    params.require(:castle).permit(:name, :address)
  end

end
