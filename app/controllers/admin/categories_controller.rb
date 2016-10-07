class Admin::CategoriesController < Admin::ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.save
      flash[:success] = 'Category was successfully created.'
      redirect_to admin_categories_url
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
  end


  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:success] = 'Category was successfully updated.'
      redirect_to admin_categories_url
    else
      render :edit
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category= Category.find params[:id]
    @category.destroy
    flash[:success] = 'Category was successfully destroyed..'
    redirect_to admin_categories_url
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
