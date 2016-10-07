class Admin::ColorsController < Admin::ApplicationController
  def index
    @colors = Color.by_code
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
      flash[:success] = 'Color successfully created'
      redirect_to admin_colors_url
    else
      render 'new'
    end
  end

  def update
    @color = Color.find(params[:id])
    if @color.update(color_params)
      flash[:success] = 'Color successfully updated'
      redirect_to admin_colors_url
    else
      flash[:alert] = @color.errors.full_messages.to_sentence
      render :edit
    end
  end

  # DELETE /colors/1
  # DELETE /colors/1.json
  def destroy
    @color = Color.find params[:id]
    @color.destroy
    flash[:success] = 'Color was successfully destroyed'
    redirect_to admin_colors_url
  end

  private
    def color_params
      params.require(:color).permit(:name, :code, :image)
    end
end
