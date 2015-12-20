class User < ActiveRecord::Base
  validates :username, :password, presence: true
  validates :username, uniqueness: true
  has_secure_password
  has_many :storages
end