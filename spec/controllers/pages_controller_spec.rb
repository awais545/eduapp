require 'spec_helper'

describe PagesController do

  describe "GET 'bids'" do
    it "returns http success" do
      get 'bids'
      response.should be_success
    end
  end

  describe "GET 'referrals'" do
    it "returns http success" do
      get 'referrals'
      response.should be_success
    end
  end

  describe "GET 'inbox'" do
    it "returns http success" do
      get 'inbox'
      response.should be_success
    end
  end

end
