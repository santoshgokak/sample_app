require 'spec_helper'

describe PagesController do
  integrate_views
  
	before(:each) do
	#
	# Define @base_title here.
	#
	@base_title = @base_title + ""
	end
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
	
	it "should have the right title" do
		get 'home'
		response.should have_tag("title",
								@base_title + " | Home")
	end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
	
	it "should have the right title" do
		get 'contact'
		response.should have_tag("title",
								@base_title + " | Contact")
	end
  end
  
  describe "GET 'about'" do
	it "should be successful" do
		get 'about'
		response.should be_success
	end
	
	it "should have the right title" do
		get 'about'
		response.should have_tag("title",
								@base_title + " | About")
	end
  end
  
   describe "GET 'help'" do
	it "should be successful" do
		get 'help'
		response.should be_success
	end
	
	it "should have the right title" do
		get 'help' 
		response.should have_tag("title",
								@base_title + " | Help")
	end
  end
  
end