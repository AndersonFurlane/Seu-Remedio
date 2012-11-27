class RemindersController < BaseController

  def index
    @reminders = current_user.reminders
  end

  def new
    @reminder = Reminder.new
  end

  def update
    @reminder = Reminder.find(params[:id])
    flash[:notice] = 'Lembrete alterado com sucesso' if @reminder.update_attributes(params[:reminder])
    respond_with @reminder, location: reminders_path
  end

  def edit
    @reminder = Reminder.find(params[:id])
  end

  def create
    @reminder = Reminder.new(params[:reminder])
    @reminder.user_id = current_user[:id]
    flash[:notice] = 'Lembrete criado com sucesso' if @reminder.save

    respond_with @reminder, :location => reminders_path
  end

  def destroy
    @reminder = Reminder.find(params[:id])
    @reminder.destroy

    respond_with @reminder, :location => reminders_path
  end
end