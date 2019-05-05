class ColorsController < ApplicationController
  def index
    @color_categories = ColorCategory.by_priority
  end
end
