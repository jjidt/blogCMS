class Comment < ActiveRecord::Base
  belongs_to :post
  validates :body, presence: true
  validates :commenter, presence: true

  scope :recent, lambda { order("comments.created_at DESC") }
end
