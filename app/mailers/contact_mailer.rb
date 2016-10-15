class ContactMailer < ApplicationMailer
  default to: %w(sales@roseamor.com sales1@roseamor.com natalia@roseamor.com diego@roseamor.com)

  def contact_email(contact)
    @contact = contact
    mail(from: @contact.email, subject: 'Contact notification email from www.roseamor.com')
  end
end
