require "spec_helper"

describe WalkthroughsController do
  describe "routing" do

    it "routes to #index" do
      get("/walkthroughs").should route_to("walkthroughs#index")
    end

    it "routes to #new" do
      get("/walkthroughs/new").should route_to("walkthroughs#new")
    end

    it "routes to #show" do
      get("/walkthroughs/1").should route_to("walkthroughs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/walkthroughs/1/edit").should route_to("walkthroughs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/walkthroughs").should route_to("walkthroughs#create")
    end

    it "routes to #update" do
      put("/walkthroughs/1").should route_to("walkthroughs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/walkthroughs/1").should route_to("walkthroughs#destroy", :id => "1")
    end

  end
end
