class ContactMailer < ActionMailer::Base
  default :from => 'remediolembrete@gmail.com'

  def contact_message(contact)
    @contact = contact
    p contact[:email]
    p contact[:content]
    mail(to: contact[:email], subject: "Lembrete - Seu Remendio", body: contact[:content])
  end
end