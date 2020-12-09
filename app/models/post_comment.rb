class PostComment < ApplicationRecord
  belongs_to :picture
  
  validates :comment_body, presence: true
  validates :comment_name, presence: true, length: {maximum: 10 }
end
