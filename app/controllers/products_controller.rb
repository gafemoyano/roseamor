class ProductsController < ApplicationController
  def index
    @categories = Category.by_name
  end
end
