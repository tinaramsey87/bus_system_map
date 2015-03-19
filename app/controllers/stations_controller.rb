class StationsController < ApplicationController
  def index
    @line = Line.find(params[:line_id])
  end

  def show
    @station = Station.find(params[:id])
  end

  def new
    @line = Line.find(params[:line_id])
    @station = @line.stations.new
  end

  def create
    @line = Line.find(params[:line_id])
    @station = @line.stations.create(station_params)
    if @station.save
      flash[:notice] = "Station successfully added"
      redirect_to line_stations_path(@line)
    else
      render :new
    end
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @line = Line.find(params[:line_id])
    @station = Station.find(params[:id])
    if @station.update(line_params)
      flash[:notice] = "Station successfully updated"
      redirect_to line_station_path(@line)
    else
      render :edit
    end
  end

  def destroy
    @line = Line.find(params[:line_id])
    @station = Station.find(params[:id])
    @station.destroy
    flash[:alert] = "Station destroyed"
    redirect_to line_stations_path(@line)
  end

  private
    def station_params
      params.require(:station).permit(:name)
    end
end
