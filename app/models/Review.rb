class Review < ActiveRecord::Base
  validates :user_id, :reviewer_id, :message, :rating, presence: true
  belongs_to :user
  belongs_to :reviewer, class_name: 'User'
end