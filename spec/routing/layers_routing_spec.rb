require "spec_helper"

describe LayersController do
  describe "routing" do

    it "routes to #index" do
      get("/layers").should route_to("layers#index")
    end

    it "routes to #new" do
      get("/layers/new").should route_to("layers#new")
    end

    it "routes to #show" do
      get("/layers/1").should route_to("layers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/layers/1/edit").should route_to("layers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/layers").should route_to("layers#create")
    end

    it "routes to #update" do
      put("/layers/1").should route_to("layers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/layers/1").should route_to("layers#destroy", :id => "1")
    end

  end
end
