class Schedule < ActiveRecord::Base
  has_many :users, through: :user_schedule_relations
end
