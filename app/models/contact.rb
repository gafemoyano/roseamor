# class Contact < MailForm::Base
#   attribute :name,      :validate => true
#   attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
#   attribute :country
#   attribute :message
#   attribute :city
#
#   # Declare the e-mail headers. It accepts anything the mail method
#   # in ActionMailer accepts.
#   def headers
#     {
#         :subject => "Contact Us Form",
#         :to => "gafemoyano@hotmail.com",
#         :from => "website@roseamor.com"
#     }
#   end
#   def country_name
#     country = ISO3166::Country[country_code]
#     country.translations[I18n.locale.to_s] || country.name
#   end
# end
class Contact
  include ActiveModel::Model

  attr_accessor :name, :email, :country, :message, :city
  validates :name, presence: true
  validates :email, presence: true
  validates :country, presence: true
  validates :message, presence: true
  validates :city, presence: true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
end