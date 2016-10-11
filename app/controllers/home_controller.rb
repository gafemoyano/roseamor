class HomeController < ApplicationController
  def index
    @country_codes = Distributor.country_codes_by_name
  end
end
