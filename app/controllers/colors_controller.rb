class ColorsController < ApplicationController
  def index
    @colors = Color.by_code
    @color_categories = ColorCategory.by_name
  end

  def new
    @color = Color.new
  end

  def edit
    @color = Color.find(params[:id])
  end

  def create
    @color = Color.new(color_params)
    if @color.save
      redirect_to root_path, notice: "The color was added!"
    else
      render 'new'
    end
  end

  def destroy
    @color = Color.find(params[:id])
    @color.destroy
    redirect_to root_path, notice: "The color was destroyed."
  end

  private
  def color_params
    params.require(:photo).permit(:image, :title)
  end
end
