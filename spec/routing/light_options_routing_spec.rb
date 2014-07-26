require "spec_helper"

describe LightOptionsController do
  describe "routing" do

    it "routes to #index" do
      get("/light_options").should route_to("light_options#index")
    end

    it "routes to #new" do
      get("/light_options/new").should route_to("light_options#new")
    end

    it "routes to #show" do
      get("/light_options/1").should route_to("light_options#show", :id => "1")
    end

    it "routes to #edit" do
      get("/light_options/1/edit").should route_to("light_options#edit", :id => "1")
    end

    it "routes to #create" do
      post("/light_options").should route_to("light_options#create")
    end

    it "routes to #update" do
      put("/light_options/1").should route_to("light_options#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/light_options/1").should route_to("light_options#destroy", :id => "1")
    end

  end
end
