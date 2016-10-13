class HomeController < ApplicationController
  def index
    @country_codes = Distributor.country_codes_by_name
    @home = Home.first_or_create
  end
end
