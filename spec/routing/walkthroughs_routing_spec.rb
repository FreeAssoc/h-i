require "spec_helper"

describe V1::WalkthroughsController do
  describe "routing" do

    it "routes to #index" do
      get("/walkthroughs").should route_to("v1/walkthroughs#index", :format => 'json')
    end

    it "routes to #show" do
      get("/walkthroughs/1").should route_to("v1/walkthroughs#show", :id => "1", :format => 'json')
    end

    it "routes to #create" do
      post("/walkthroughs").should route_to("v1/walkthroughs#create", :format => 'json')
    end

    it "routes to #update" do
      put("/walkthroughs/1").should route_to("v1/walkthroughs#update", :id => "1", :format => 'json')
    end

    it "routes to #destroy" do
      delete("/walkthroughs/1").should route_to("v1/walkthroughs#destroy", :id => "1", :format => 'json')
    end

  end
end
