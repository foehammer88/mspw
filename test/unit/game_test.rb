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

require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
