class User < ActiveRecord::Base

  has_secure_password

  validates :password_digest, presence: true
  validates :password, presence: true
  validates_length_of :password, minimum: 6
  validates :password_confirmation, presence: true
  validates :email, presence: true, uniqueness: true

end
