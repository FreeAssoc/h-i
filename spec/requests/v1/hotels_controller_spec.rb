require 'spec_helper'

describe V1::HotelsController do

  before(:all) do
    create_hotels
  end

  before(:each) do
    @env = http_login
  end


  #
  # pass the @env along with your request, eg:
  #
  # GET '/labels', {}, @env
  it "should get v1" do
    get '/hotels', {}, @env
    assert_response 200
  end

end
