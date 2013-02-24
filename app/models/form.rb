# == Schema Information
#
# Table name: forms
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  type         :string(255)
#  amount       :decimal(, )
#  requirements :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Form < ActiveRecord::Base
  attr_accessible :amount, :amount, :name, :requirements, :type

  validates :name, presence: true,
                            uniqueness: true
end
