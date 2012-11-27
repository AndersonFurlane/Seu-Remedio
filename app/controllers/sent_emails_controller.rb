class SentEmailsController < BaseController

  before_filter :load_reminder_user

  def index
    @sent_emails = SentEmail.scoped
  end

  def show
    @sent_emails = SentEmail.find(params[:id])
  end

  def edit
    @sent_email = SentEmail.find(params[:id])
    @sent_email.completed = true
    @sent_email.reminder.days = @sent_email.reminder.days - 1
    flash[:notice] = 'Remedio Confirmado' if @sent_email.update_attributes(params[:sent_email])
    respond_with @sent_email, location: reminders_path
  end

  def new
    @sent_emails = SentEmail.new
  end

  def create
    @sent_email = SentEmail.new(params[:sent_email])
    flash[:notice] = 'Remedio registrado com sucesso' if @sent_email.save
  end

  protected

  def load_reminder
    @reminders = Reminder.all
   p current_user
  end

end