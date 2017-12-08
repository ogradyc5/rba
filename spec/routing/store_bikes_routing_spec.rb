require "rails_helper"

RSpec.describe StoreBikesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/store_bikes").to route_to("store_bikes#index")
    end

    it "routes to #new" do
      expect(:get => "/store_bikes/new").to route_to("store_bikes#new")
    end

    it "routes to #show" do
      expect(:get => "/store_bikes/1").to route_to("store_bikes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/store_bikes/1/edit").to route_to("store_bikes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/store_bikes").to route_to("store_bikes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/store_bikes/1").to route_to("store_bikes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/store_bikes/1").to route_to("store_bikes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/store_bikes/1").to route_to("store_bikes#destroy", :id => "1")
    end

  end
end
