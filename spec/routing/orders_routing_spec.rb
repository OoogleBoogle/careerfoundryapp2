require "rails_helper"

RSpec.describe OrdersController, type: :routing do
  describe "routing" do
  	before :each do
  		build(:user)
  	end
    it "routes to #index" do
      expect(:get => "/users/1/orders").to route_to('orders#index', user_id: "1")
    end

    it "routes to #new" do
      expect(:get => "users/1/orders/new").to route_to("orders#new", user_id: "1")
    end

    it "routes to #show" do
      expect(:get => "users/1/orders/1").to route_to("orders#show", user_id: "1", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "users/1/orders/1/edit").to route_to("orders#edit", user_id: "1", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "products/1/orders").to route_to("orders#create", product_id: "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "users/1/orders/1").to route_to("orders#update", user_id: "1", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "users/1/orders/1").to route_to("orders#update", user_id: "1", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "users/1/orders/1").to route_to("orders#destroy", user_id: "1", :id => "1")
    end
  end
end
