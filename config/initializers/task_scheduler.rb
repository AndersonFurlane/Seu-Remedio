require 'rubygems'
require 'rufus/scheduler'

scheduler = Rufus::Scheduler.start_new

scheduler.every("5m") do
  reminders = Reminder.all
  sent_email = SentEmail.new
  time_now = Time.now.strftime("%H:%M:%S")
  time_past = (Time.now - 5.minutes).strftime("%H:%M:%S")

  reminders.each do |r|
    if (r.time.strftime("%H:%M:%S") <= time_now) && (r.time.strftime("%H:%M:%S") >= time_past)
      contact = Contact.new
      contact.name = r.name
      contact.email = r.user.email
      message = "#{r.user.full_name} esta na hora de tomar o remedio: #{r.name}"
      contact.content = message
      ContactMailer.contact_email_reminder(contact).deliver
      sent_email.reminder = r
      sent_email.time = Time.now
      sent_email.completed = nil
      sent_email.save
    else
      puts false
    end
  end

end
