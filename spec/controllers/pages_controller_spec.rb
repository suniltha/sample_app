require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title "ruby on rails"
  end

  describe "GET 'Home'" do
    it "returns http success" do
      get 'Home'
      response.should be_success
    end
   
      it "should have the right title" do
        get'Home'
        response.should have_selector("title" ,
                                   :content => "#{@base_title} | Home ")
      end
    end


  describe "GET 'Contact'" do
    it "returns http success" do
      get 'Contact'
      response.should be_success
    end
    it "should have the right title" do
        get'Contact'
        response.should have_selector("title" ,
                                   :content => "#{@base_title} | Contact")
      end
  end

  describe "GET 'About'" do
    it "returns http success" do
      get 'About'
      response.should be_success
    end
    it "should have the right title" do
        get'About'
        response.should have_selector("title" ,
                                   :content => "#{@base_title} | About")
      end

      describe "GET 'Help'" do
    it "returns http success" do
      get 'help'
      response.should be_success
    end
    it "should have the right title" do
        get'help'
        response.should have_selector("title" ,
                                   :content => "#{@base_title} | Help")
      end
  end

end
