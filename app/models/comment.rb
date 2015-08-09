class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  validates :body, presence: true
  validates :product_id, presence: true
  validates :user_id, presence: true
end
