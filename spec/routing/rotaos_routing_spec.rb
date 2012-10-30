require "spec_helper"

describe RotaosController do
  describe "routing" do

    it "routes to #index" do
      get("/rotaos").should route_to("rotaos#index")
    end

    it "routes to #new" do
      get("/rotaos/new").should route_to("rotaos#new")
    end

    it "routes to #show" do
      get("/rotaos/1").should route_to("rotaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rotaos/1/edit").should route_to("rotaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rotaos").should route_to("rotaos#create")
    end

    it "routes to #update" do
      put("/rotaos/1").should route_to("rotaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rotaos/1").should route_to("rotaos#destroy", :id => "1")
    end

  end
end
