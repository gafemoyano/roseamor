class DistributorsController < ApplicationController
  def show
    @distributor = Distributor.find params[:id]
    respond_to do | format|
      format.js {render layout: false}
    end
  end

  def index
    @distributors = Distributor.where(nil) # creates an anonymous scope
    @distributors = @distributors.country(params[:country]) if params[:country].present?

    respond_to do | format|
      format.js {render layout: false}
    end
  end
end