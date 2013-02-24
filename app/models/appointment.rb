# == Schema Information
#
# Table name: appointments
#
#  id         :integer          not null, primary key
#  username   :string(255)
#  date       :datetime
#  verified   :boolean
#  completed  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Appointment < ActiveRecord::Base
  attr_accessible :completed, :date, :username, :verified

  belongs_to :user

  #validates :id, presence: true,
  #                    uniqueness: true
end
