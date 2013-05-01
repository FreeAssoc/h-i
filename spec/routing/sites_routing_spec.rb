require "spec_helper"

describe V1::SitesController do
  describe "routing" do

    it "routes to #index" do
      get("/sites").should route_to("v1/sites#index", :format => 'json')
    end

    it "routes to #show" do
      get("/sites/1").should route_to("v1/sites#show", :id => "1", :format => 'json')
    end

    it "routes to #create" do
      post("/sites").should route_to("v1/sites#create", :format => 'json')
    end

    it "routes to #update" do
      put("/sites/1").should route_to("v1/sites#update", :id => "1", :format => 'json')
    end

    it "routes to #destroy" do
      delete("/sites/1").should route_to("v1/sites#destroy", :id => "1", :format => 'json')
    end

  end
end
