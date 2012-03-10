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

class Player < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :tribe, :level
  has_secure_password
  before_save :create_remember_token

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name,      presence:     true,
                        length:       { maximum: 50 }
  validates :email,     presence:     true,
                        format:       { with: email_regex },
                        uniqueness:   { case_sensitive: false } 
  validates :password,  presence:     true,
                        confirmation: true,
                        length:       { minimum: 6 }

  private
  
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
    
  has_many :player_cards
  has_many :cards, :through => :player_cards
end

