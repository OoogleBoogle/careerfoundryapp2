class Order < ActiveRecord::Base
  validates :product_id, presence: true
  validates :user_id, presence: true
  belongs_to :product
  belongs_to :user

  def total_cost
  end
end
