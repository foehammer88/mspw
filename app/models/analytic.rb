class Analytic < ActiveRecord::Base
  attr_accessible :amount_money, :amount_student_used, :college, :total_on_campus, :year

validates :college, presence: true,
                   uniqueness: true 
end
