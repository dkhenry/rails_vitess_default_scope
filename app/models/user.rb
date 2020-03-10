class User < ActiveRecord::Base
  has_secure_password
  has_many :order
  validates :email, presence: true, uniqueness: true

  def self.current
    Thread.current[:user]
  end

  def self.current=(user)
    Thread.current[:user] = user
  end  
end
