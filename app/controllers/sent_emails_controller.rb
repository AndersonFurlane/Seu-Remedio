#encoding: utf-8
class SentEmailsController < BaseController

  def index
    @sent_emails = SentEmail.all
  end

  def show
  end

  def edit
    @sent_email = SentEmail.find(params[:id])
    @sent_email.completed = true
    @sent_email.reminder.days = @sent_email.reminder.days - 1
    flash[:notice] = 'Remédio Confirmado' if @sent_email.update_attributes(params[:sent_email])
    respond_with @sent_email, location: reminders_path
  end

  def new
  end

  def create
  end

end