class Product < ActiveRecord::Base
	has_many :orders
	has_many :comments
	validates :title, presence: true
	validates :description, presence: true
	validates :image_url, presence: true
	validates :price, presence: true
	# after_save    :expire_contact_all_cache
	# after_destroy :expire_contact_all_cache

	# def self.all_cached
	# 	Rails.cache.fetch("Product.all") {all}
	# end

	# def expire_contact_all_cache
	#   Rails.cache.delete('Product.all')
	# end
end
