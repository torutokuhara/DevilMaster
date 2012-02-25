# == Schema Information
#
# Table name: players
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  tribe      :string(255)
#  level      :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
