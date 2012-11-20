class Reminder < ActiveRecord::Base
  # associations
  belongs_to :user

  # attributes
  attr_accessible :name, :time, :days, :start_at, :user, :responsible

  # validations
  validates_presence_of :name, :time, :days, :start_at, :user

end