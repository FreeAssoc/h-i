require "spec_helper"

describe V1::HotelsController do
  describe "routing" do

    it "routes to #index" do
      get("/hotels").should route_to("v1/hotels#index", :format => 'json')
    end

    it "routes to #show" do
      get("/hotels/1").should route_to("v1/hotels#show", :id => "1", :format => 'json')
    end

    it "routes to #create" do
      post("/hotels").should route_to("v1/hotels#create", :format => 'json')
    end

    it "routes to #update" do
      put("/hotels/1").should route_to("v1/hotels#update", :id => "1", :format => 'json')
    end

    it "routes to #destroy" do
      delete("/hotels/1").should route_to("v1/hotels#destroy", :id => "1", :format => 'json')
    end

  end
end
