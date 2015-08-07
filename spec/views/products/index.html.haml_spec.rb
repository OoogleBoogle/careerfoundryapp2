require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url",
        :price => 1,
        :size => "Size",
        :orientation => "Orientation"
      ),
      Product.create!(
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url",
        :price => 1,
        :size => "Size",
        :orientation => "Orientation"
      )
    ])
  end

  it "renders a list of products" do
    render
    # assert_select "div>p", :text => "Title".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    # assert_select "tr>td", :text => 1.to_s, :count => 2
    # assert_select "tr>td", :text => "Size".to_s, :count => 2
    # assert_select "tr>td", :text => "Orientation".to_s, :count => 2
  end
end
