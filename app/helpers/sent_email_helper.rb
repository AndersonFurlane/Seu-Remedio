#encoding: utf-8

module SentEmailHelper

  def search_reminders(id)
    #@reminders = current_user.reminders
    @reminders = Reminder.all
    @reminders.each do |e|
      if e.id == id
       @reminder = e
      end
    end
    @reminder
  end

  def check_medication(sent)
    return case sent.completed
    when true then "Remédio Tomado"
    when false then "Esqueceu esse Dia"
    else
      link_to 'Sim', edit_sent_email_path(sent)
    end
  end

end