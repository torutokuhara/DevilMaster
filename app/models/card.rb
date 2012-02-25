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

class Card < ActiveRecord::Base
  attr_accessible :name, :strength, :image
end
