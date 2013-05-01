require "spec_helper"

describe V1::QuestionsController do
  describe "routing" do

    it "routes to #index" do
      get("/questions").should route_to("v1/questions#index", :format => 'json')
    end

    it "routes to #show" do
      get("/questions/1").should route_to("v1/questions#show", :id => "1", :format => 'json')
    end

    it "routes to #create" do
      post("/questions").should route_to("v1/questions#create", :format => 'json')
    end

    it "routes to #update" do
      put("/questions/1").should route_to("v1/questions#update", :id => "1", :format => 'json')
    end

    it "routes to #destroy" do
      delete("/questions/1").should route_to("v1/questions#destroy", :id => "1", :format => 'json')
    end

  end
end
