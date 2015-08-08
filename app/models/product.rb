class Product < ActiveRecord::Base
	has_many :orders
	has_many :comments
	validates :title, presence: true
	validates :description, presence: true
	validates :image_url, presence: true
	validates :price, presence: true
	ratyrate_rateable
end
