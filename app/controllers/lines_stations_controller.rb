class LinesStationsController < ApplicationController

  def index
    @lines_stations = Lines_Stations.all
  end

  def new
    @lines_stations = Lines_Stations.create
  end

  def create
    @lines_stations = Lines_Stations.create(lines_stations_params)
    if @lines_stations.save
      flash[:notice] = "Time provided successfully"
      redirect_to root_path
    else
      render :new
    end
  end


  private
    def lines_stations_params
      params.require(:lines_stations).permit(:time)
    end
end
