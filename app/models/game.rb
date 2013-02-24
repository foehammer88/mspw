class Game < ActiveRecord::Base
  attr_accessible :college, :date, :level, :money, :number_applications, :points, :username
end
