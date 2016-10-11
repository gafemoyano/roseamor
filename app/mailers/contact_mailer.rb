class ContactMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def contact_email(user)
    @recipients = %w(sales@roseamor.com natalia@roseamor.com diego@roseamor.com)
    mail(to: @recipients, subject: 'Contact Email')
  end
end
