# == Schema Information
#
# Table name: analytics
#
#  id                  :integer          not null, primary key
#  college             :string(255)
#  amount_student_used :integer
#  amount_money        :integer
#  total_on_campus     :integer
#  year                :date
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Analytic < ActiveRecord::Base
  attr_accessible :amount_money, :amount_student_used, :college, :total_on_campus, :year

validates :college, presence: true,
                   uniqueness: true 
end
