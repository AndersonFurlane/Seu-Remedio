class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me,
    :last_name, :first_name

  has_many :reminders

  def full_name
    "#{first_name} #{last_name}"
  end

end