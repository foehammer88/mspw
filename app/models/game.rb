# == Schema Information
#
# Table name: games
#
#  id                  :integer          not null, primary key
#  username            :string(255)
#  points              :integer
#  level               :integer
#  college             :string(255)
#  number_applications :integer
#  date                :date
#  money               :decimal(, )
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Game < ActiveRecord::Base
  attr_accessible :college, :date, :level, :money, :number_applications, :points, :username

  belongs_to :user

  validates :username, presence: true,
                                uniqueness: true


end
