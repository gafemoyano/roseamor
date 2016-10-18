class ProductsController < ApplicationController
  def index
    @categories = Category.by_priority
  end
end
