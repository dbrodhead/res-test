require 'spec_helper'

describe EventDisplayController do

  describe "GET 'trade'" do
    it "returns http success" do
      get 'trade'
      response.should be_success
    end
  end

  describe "GET 'day'" do
    it "returns http success" do
      get 'day'
      response.should be_success
    end
  end

end
