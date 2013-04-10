require "spec_helper"

describe ContactInfosController do
  describe "routing" do

    it "routes to #index" do
      get("/contact_infos").should route_to("contact_infos#index")
    end

    it "routes to #new" do
      get("/contact_infos/new").should route_to("contact_infos#new")
    end

    it "routes to #show" do
      get("/contact_infos/1").should route_to("contact_infos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contact_infos/1/edit").should route_to("contact_infos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contact_infos").should route_to("contact_infos#create")
    end

    it "routes to #update" do
      put("/contact_infos/1").should route_to("contact_infos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contact_infos/1").should route_to("contact_infos#destroy", :id => "1")
    end

  end
end
