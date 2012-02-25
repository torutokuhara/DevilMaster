# == Schema Information
#
# Table name: cards
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  strength   :integer
#  image      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
