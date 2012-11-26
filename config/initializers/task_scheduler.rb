require 'rubygems'
require 'rufus/scheduler'

scheduler = Rufus::Scheduler.start_new

scheduler.every("5m") do
  reminders = Reminder.all
  sent_email = SentEmail.new
  puts time_now = Time.now.strftime("%H:%M:%S")
  puts time_past = (Time.now - 5.minutes).strftime("%H:%M:%S")
  reminders.each do |r|
    puts r.time.strftime("%H:%M:%S")

    if (r.time.strftime("%H:%M:%S") <= time_now) && (r.time.strftime("%H:%M:%S") >= time_past)
      puts true
      contact = Contact.new
      puts contact.name = r.name
      puts contact.email = r.user.email
      message = "#{r.user.full_name} esta na hora de tomar o remedio: #{r.name}"
      puts contact.content = message
      ContactMailer.contact_email_reminder(contact).deliver
      puts sent_email.reminder = r
      puts sent_email.time = Time.now
      puts sent_email.completed = nil
      sent_email.save
    else
      puts false
    end
  end
end
