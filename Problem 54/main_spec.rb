require "rspec"
require File.dirname(__FILE__) + '/main.rb'

describe "My behaviour" do

  it "find the card's suit" do
    stuff = Main.new
    "D".should == stuff.get_suit("2D")
  end

  it "should return hand value" do
    stuff = Main.new
    10.should == stuff.hand_ranks("Royal Flush")
  end
end