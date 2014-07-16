class User < ActiveRecord::Base
  has_one :photo, as: :imageable
  
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
