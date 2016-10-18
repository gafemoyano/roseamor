class Admin::ColorCategoriesController < Admin::ApplicationController
  def index
    @color_categories = ColorCategory.all
  end

  def new
    @color_category = ColorCategory.new
  end

  def create
    @color_category = ColorCategory.new color_category_params
    if @color_category.save
      flash[:success] = 'Color category was successfully created.'
      redirect_to admin_color_categories_url
    else
      render :new
    end
  end

  def edit
    @color_category = ColorCategory.find(params[:id])
  end

  def update
    @color_category = ColorCategory.find(params[:id])
    if @color_category.update(color_category_params)
      flash[:success] = 'Color category was successfully updated.'
      redirect_to admin_color_categories_url
    else
      render :edit
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @color_category = ColorCategory.find params[:id]
    @color_category.destroy
    flash[:success] = 'Color category was successfully destroyed..'
    redirect_to admin_color_categories_url
  end

  private
  def color_category_params
    params.require(:color_category).permit(:name, :order)
  end
end
