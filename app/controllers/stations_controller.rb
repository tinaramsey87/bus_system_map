class StationsController < ApplicationController
  def index
    @stations = Station.all
    @line = Line.find(params[:line_id])
  end

  def show
    @station = Station.find(params[:id])
  end

  def new
    @station = Station.new
    @line = Line.find(params[:line_id])
  end

  def create
    @station = Station.new(station_params)
    if @station.save
      flash[:notice] = "Station successfully added"
      redirect_to line_stations_path
    else
      render :new
    end
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])
    if @station.update(line_params)
      flash[:notice] = "Station successfully updated"
      redirect_to line_station_path
    else
      render :edit
    end
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    flash[:alert] = "Station destroyed"
    redirect_to line_stations_path
  end

  private
    def station_params
      params.require(:station).permit(:name)
    end
end
