require "spec_helper"

describe MotoristaosController do
  describe "routing" do

    it "routes to #index" do
      get("/motoristaos").should route_to("motoristaos#index")
    end

    it "routes to #new" do
      get("/motoristaos/new").should route_to("motoristaos#new")
    end

    it "routes to #show" do
      get("/motoristaos/1").should route_to("motoristaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/motoristaos/1/edit").should route_to("motoristaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/motoristaos").should route_to("motoristaos#create")
    end

    it "routes to #update" do
      put("/motoristaos/1").should route_to("motoristaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/motoristaos/1").should route_to("motoristaos#destroy", :id => "1")
    end

  end
end
