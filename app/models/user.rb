class User < ActiveRecord::Base
  has_many :user_schedules
  has_many :schedules, through: :user_schedules

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :timeoutable, authentication_keys: [:login_name]

  validates :username, presence: true
  validates :login_name, presence: true, uniqueness: true

  private
  def email_required?
    false
  end

  def email_changed?
    false
  end
end
