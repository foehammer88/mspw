class Appointment < ActiveRecord::Base
  attr_accessible :completed, :date, :username, :verified

  belongs_to :user

  #validates :id, presence: true,
  #                    uniqueness: true
end
