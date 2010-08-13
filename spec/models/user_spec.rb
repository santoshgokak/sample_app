require 'spec_helper'

describe User do
  before(:each) do
    @valid_attributes = {
      :name => "Example User", :email => "user@example.com"
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end
  
  it "should require a name"
end
