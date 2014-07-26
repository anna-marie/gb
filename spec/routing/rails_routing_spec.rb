require "spec_helper"

describe RailsController do
  describe "routing" do

    it "routes to #index" do
      get("/rails").should route_to("rails#index")
    end

    it "routes to #new" do
      get("/rails/new").should route_to("rails#new")
    end

    it "routes to #show" do
      get("/rails/1").should route_to("rails#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rails/1/edit").should route_to("rails#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rails").should route_to("rails#create")
    end

    it "routes to #update" do
      put("/rails/1").should route_to("rails#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rails/1").should route_to("rails#destroy", :id => "1")
    end

  end
end
