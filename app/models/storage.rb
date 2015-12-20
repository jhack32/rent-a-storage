class Storage < ActiveRecord::Base
  validates :title, :price, :location, :user_id, presence: true
  belongs_to :user
end