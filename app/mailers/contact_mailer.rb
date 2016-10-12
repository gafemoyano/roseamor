class ContactMailer < ApplicationMailer
  default from: 'website@roseamor.com'

  def contact_email(user)
    @recipients = %w(sales@roseamor.com sales1@roseamor.com natalia@roseamor.com diego@roseamor.com)
    mail(to: @recipients, subject: 'Contact Email')
  end
end
