class Comment < ActiveRecord::Base
  validates :body, presence: true
  validates :commenter, presence: true
end
