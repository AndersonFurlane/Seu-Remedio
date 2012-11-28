class ContactMailer < ActionMailer::Base

   default :from => 'remediolembrete@gmail.com'
  def contact_message(contact)
    @contact = contact
    mail(from: contact[:email], to: 'remediolembrete@gmail.com', subject: "Lembrete - Seu Remendio", body: contact[:content])
  end

   def contact_email_reminder(params)
    @params = params
    mail(to: params.email, subject: "Lembrete - Seu Remendio", body: params.content)
  end

end