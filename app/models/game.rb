class Game < ActiveRecord::Base
  attr_accessible :college, :date, :level, :money, :number_applications, :points, :username

  belongs_to :user

  validates :username, presence: true,
                                uniqueness: true


end
