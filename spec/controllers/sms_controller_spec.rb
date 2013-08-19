require 'spec_helper'

describe SmsController do

  describe "GET 'send_sms'" do
    it "returns http success" do
      get 'send_sms'
      response.should be_success
    end
  end

  describe "GET 'receive_sms'" do
    it "returns http success" do
      get 'receive_sms'
      response.should be_success
    end
  end

end
