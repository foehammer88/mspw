class Appointment < ActiveRecord::Base
  attr_accessible :completed, :date, :username, :verified

  #validates :id, presence: true,
  #                    uniqueness: true
end
