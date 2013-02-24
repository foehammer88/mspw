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

require 'test_helper'

class AnalyticTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
