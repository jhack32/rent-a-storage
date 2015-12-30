class User < ActiveRecord::Base
  validates :username, presence: true
  validates :username, uniqueness: true
  validates_format_of :email, with: /@/
  has_secure_password
  has_many :storages
  has_many :reviews
end