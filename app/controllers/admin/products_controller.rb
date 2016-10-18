class Admin::ProductsController < Admin::ApplicationController
  def index
    @categories = Category.by_priority
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    if @product.save
      flash[:success] = 'Product was successfully created.'
      redirect_to admin_products_url
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end


  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:success] = 'Product was successfully updated.'
      redirect_to admin_products_url
    else
      render :edit
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find params[:id]
    @product.destroy
    flash[:success] = 'Product was successfully destroyed.'
    redirect_to admin_products_url
  end

  private
  def product_params
    params.require(:product).permit(:name, :height, :diameter, :description, :category_id, :image, :package)
  end
end
