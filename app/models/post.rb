class Post < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true
  validates :content, presence: true

  scope :recent, lambda { order("posts.created_at DESC") }
end
