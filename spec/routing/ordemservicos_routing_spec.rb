require "spec_helper"

describe OrdemservicosController do
  describe "routing" do

    it "routes to #index" do
      get("/ordemservicos").should route_to("ordemservicos#index")
    end

    it "routes to #new" do
      get("/ordemservicos/new").should route_to("ordemservicos#new")
    end

    it "routes to #show" do
      get("/ordemservicos/1").should route_to("ordemservicos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ordemservicos/1/edit").should route_to("ordemservicos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ordemservicos").should route_to("ordemservicos#create")
    end

    it "routes to #update" do
      put("/ordemservicos/1").should route_to("ordemservicos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ordemservicos/1").should route_to("ordemservicos#destroy", :id => "1")
    end

  end
end
