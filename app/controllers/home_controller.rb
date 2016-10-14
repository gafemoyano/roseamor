class HomeController < ApplicationController
  def index
    @country_codes = Distributor.country_codes_by_name
    @home = Home.first_or_create
    @contact = Contact.new
  end

  def contact
    @contact = Contact.new(contact_params)
    @contact.country = ISO3166::Country[params[:contact][:country]].name
    if @contact.valid?
      ContactMailer.contact_email(@contact).deliver
      flash[:success] = 'Thank you for your message. We will contact you soon!'
      render "#{root_url}#contact"
    else
      @country_codes = Distributor.country_codes_by_name
      @home = Home.first_or_create
      flash[:danger] = 'Cannot send message.'
      render :index
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :country, :message, :city)
  end
end
