class DistributorsController < ApplicationController
  def index
    @distributors = Distributor.by_priority # creates an anonymous scope
    @distributors = @distributors.country(params[:country]) if params[:country].present?

    respond_to do | format|
      format.js {render layout: false}
    end
  end
end
