class SentEmail < ActiveRecord::Base
  # associations
  belongs_to :reminder

  # attributes
  attr_accessible :time, :completed, :reminder_id

  # validations
  validates_presence_of :time, :reminder

  def save_send(params)
    flash[:notice] = 'Remedio Confirmado' if params.save
  end

end
