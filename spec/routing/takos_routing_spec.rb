require "rails_helper"

RSpec.describe TakosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/takos").to route_to("takos#index")
    end

    it "routes to #new" do
      expect(:get => "/takos/new").to route_to("takos#new")
    end

    it "routes to #show" do
      expect(:get => "/takos/1").to route_to("takos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/takos/1/edit").to route_to("takos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/takos").to route_to("takos#create")
    end

    it "routes to #update" do
      expect(:put => "/takos/1").to route_to("takos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/takos/1").to route_to("takos#destroy", :id => "1")
    end

  end
end
