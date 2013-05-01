require "spec_helper"

describe V1::QuestionTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/question_types").should route_to("v1/question_types#index", :format => 'json')
    end

    it "routes to #show" do
      get("/question_types/1").should route_to("v1/question_types#show", :id => "1", :format => 'json')
    end

    it "routes to #create" do
      post("/question_types").should route_to("v1/question_types#create", :format => 'json')
    end

    it "routes to #update" do
      put("/question_types/1").should route_to("v1/question_types#update", :id => "1", :format => 'json')
    end

    it "routes to #destroy" do
      delete("/question_types/1").should route_to("v1/question_types#destroy", :id => "1", :format => 'json')
    end

  end
end
