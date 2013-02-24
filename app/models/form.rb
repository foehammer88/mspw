class Form < ActiveRecord::Base
  attr_accessible :amount, :amount, :name, :requirements, :type

  validates :name, presence: true,
                            uniqueness: true
end
