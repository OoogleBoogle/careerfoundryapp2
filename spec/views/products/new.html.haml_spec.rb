# require 'rails_helper'

# RSpec.describe "products/new", type: :view do
#   before(:each) do
#     assign(:product, Product.new(
#       :title => "MyString",
#       :description => "MyText",
#       :image_url => "MyString",
#       :price => 1,
#       :size => "MyString",
#       :orientation => "MyString"
#     ))
#   end

#   it "renders new product form" do
#     render

#     assert_select "form[action=?][method=?]", products_path, "post" do

#       assert_select "input#product_title[name=?]", "product[title]"

#       assert_select "textarea#product_description[name=?]", "product[description]"

#       assert_select "input#product_image_url[name=?]", "product[image_url]"

#       assert_select "input#product_price[name=?]", "product[price]"

#       assert_select "input#product_size[name=?]", "product[size]"

#       assert_select "input#product_orientation[name=?]", "product[orientation]"
#     end
#   end
# end
