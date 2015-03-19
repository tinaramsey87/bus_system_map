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

  def edit
    @line = Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])
    if @line.update(line_params)
      flash[:notice] = "Line successfully updated"
      redirect_to line_path
    else
      render :edit
    end
  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    flash[:alert] = "Line destroyed"
    redirect_to lines_path
  end

  private
    def line_params
      params.require(:line).permit(:name, :number)
    end
end
