require "spec_helper"

describe V1::CategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/categories").should route_to("v1/categories#index", :format => 'json')
    end

    it "routes to #show" do
      get("/categories/1").should route_to("v1/categories#show", :id => "1", :format => 'json')
    end

    it "routes to #create" do
      post("/categories").should route_to("v1/categories#create", :format => 'json')
    end

    it "routes to #update" do
      put("/categories/1").should route_to("v1/categories#update", :id => "1", :format => 'json')
    end

    it "routes to #destroy" do
      delete("/categories/1").should route_to("v1/categories#destroy", :id => "1", :format => 'json')
    end

  end
end
