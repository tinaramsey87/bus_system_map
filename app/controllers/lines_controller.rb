class LinesController < ApplicationController
  def index
    @lines = Line.all
  end

  def show
    @line = Line.find(params[:id])
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.new(line_params)
    if @line.save
      flash[:notice] = "Line successfully added"
      redirect_to lines_path
    else
      render :new
    end
  end

  private
    def line_params
      params.require(:line).permit(:name, :number)
    end
end
