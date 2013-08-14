require 'spec_helper'

describe UserRitualsController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'post'" do
    it "returns http success" do
      get 'post'
      response.should be_success
    end
  end

end
