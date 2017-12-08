require "rails_helper"

RSpec.describe StoreBicyclesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/store_bicycles").to route_to("store_bicycles#index")
    end

    it "routes to #new" do
      expect(:get => "/store_bicycles/new").to route_to("store_bicycles#new")
    end

    it "routes to #show" do
      expect(:get => "/store_bicycles/1").to route_to("store_bicycles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/store_bicycles/1/edit").to route_to("store_bicycles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/store_bicycles").to route_to("store_bicycles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/store_bicycles/1").to route_to("store_bicycles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/store_bicycles/1").to route_to("store_bicycles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/store_bicycles/1").to route_to("store_bicycles#destroy", :id => "1")
    end

  end
end
