class User < ActiveRecord::Base
has_secure_password
  validates :name, presence: true
  validates :password, presence: true
  validates :password_digest, presence: true

  has_many :comments

end