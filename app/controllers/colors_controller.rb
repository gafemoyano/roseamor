class ColorsController < ApplicationController
  def index
    @colors = Color.all
  end

  def new
    @color = Color.new
  end

  def create
    @color = Color.new(color_params)
    if @color.save
      flash[:success] = "The color was added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @color = Color.find(params[:id])
    @color.destroy
    flash[:success] = "The color was destroyed."
    redirect_to root_path
  end

  private

  def color_params
    params.require(:photo).permit(:image, :title)
  end
end
