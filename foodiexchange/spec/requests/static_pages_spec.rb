require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before {visit root_path}

    it "should have the h1 'Foodiexchange'" do
      page.should have_selector('h1', text: 'Foodiexchange')
    end

    it "should have the base title" do
      page.should have_selector('title',
                        text: "Foodiexchange")
    end

    it "should not have a custom page title" do
      page.should_not have_selector('title', text: '| Home')
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      page.should have_selector('h1', text: 'Help')
    end

    it "should have the title 'Help'" do
      page.should have_selector('title',
                        text: "Foodiexchange | Help")
    end
  end

  describe "About page" do
    before { visit about_path }
    it "should have the h1 'About'" do
      
      page.should have_selector('h1', text: 'About')
    end

    it "should have the title 'About Us'" do
      page.should have_selector('title', text: "Foodiexchange | About")
    end
	end
	
 
   describe "Contact page" do
    before contact_path
    it "should have the h1 'Contact'" do
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      page.should have_selector('title',
                    text: "Foodiexchange | Contact")
    end
   end
   end
   
