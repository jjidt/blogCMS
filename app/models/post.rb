class Post < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true
  validates :content, presence: true

  scope :recent, lambda { order("posts.created_at DESC") }

  def format_date
    time = self.created_at
    "#{time.month}/#{time.day}/#{time.year}"
  end
end
