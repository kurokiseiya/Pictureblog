class Picture < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :post_comments, dependent: :destroy
  
  validates :picture, presence: true
  validates :caption, presence: true
end
