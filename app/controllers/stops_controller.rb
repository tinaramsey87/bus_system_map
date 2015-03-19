class StopsController < ApplicationController

  def index
    @stop = Stop.all
  end

  def new
    @stop = Stop.create
  end

  def create
    @stop = Stop.create(stop_params)
    if @stop.save
      flash[:notice] = "Time provided successfully"
      redirect_to root_path
    else
      render :new
    end
  end


  private
    def stop_params
      params.require(:stop).permit(:time)
    end
end
