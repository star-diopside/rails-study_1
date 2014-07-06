class User < ActiveRecord::Base
  has_many :schedules, through: :user_schedule_relations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :timeoutable, authentication_keys: [:login_name]

  validates :username, presence: true
  validates :login_name, presence: true
  validates :login_name, uniqueness: true
end
