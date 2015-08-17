class User < ActiveRecord::Base
	has_many :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true
  after_create :send_welcome_email

  def full_name
  	[self.first_name, self.last_name].join(" ")
  end

  def total_cost
    # o = self.orders
    # # orders.sum(:product_id)
    # o.each do |order|
    #   order.product.price
    #   # p = Product.find(order.product_id)
    # end
  end

  private
    def send_welcome_email
      UserMailer.welcome_email(self).deliver_later
    end
end
