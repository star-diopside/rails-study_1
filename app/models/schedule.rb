class Schedule < ActiveRecord::Base
  has_many :user_schedules
  has_many :users, through: :user_schedules
end
