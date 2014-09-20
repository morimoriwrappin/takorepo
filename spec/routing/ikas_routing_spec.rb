require "rails_helper"

RSpec.describe IkasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ikas").to route_to("ikas#index")
    end

    it "routes to #new" do
      expect(:get => "/ikas/new").to route_to("ikas#new")
    end

    it "routes to #show" do
      expect(:get => "/ikas/1").to route_to("ikas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ikas/1/edit").to route_to("ikas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ikas").to route_to("ikas#create")
    end

    it "routes to #update" do
      expect(:put => "/ikas/1").to route_to("ikas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ikas/1").to route_to("ikas#destroy", :id => "1")
    end

  end
end
