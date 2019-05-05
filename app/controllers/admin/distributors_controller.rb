class Admin::DistributorsController < Admin::ApplicationController
  def index
    @distributors = Distributor.by_country
  end

  def new
    @distributor = Distributor.new
  end

  def create
    @distributor = Distributor.new distributor_params
    if @distributor.save
      flash[:success] = 'Distributor was successfully created.'
      redirect_to admin_distributors_url
    else
      render :new
    end
  end

  def edit
    @distributor = Distributor.find(params[:id])
  end


  def update
    @distributor = Distributor.find(params[:id])
    if @distributor.update(distributor_params)
      flash[:success] = 'Distributor was successfully updated.'
      redirect_to admin_distributors_url
    else
      render :edit
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @distributor = Distributor.find params[:id]
    @distributor.destroy
    flash[:success] = 'Distributor was successfully destroyed.'
    redirect_to admin_distributors_url
  end

  private
  def distributor_params
    params.require(:distributor).permit(
        :name, :phone, :phone2, :phone3,
        :mail, :website, :address, :logo,
        :country_code, :order)
  end
end