require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
  	it "should have the content 'Sample App'" do
  		visit '/static_pages/home'
  		expect(page).to have_content('Sample App')
  	end

  	  	it "should have the base title" do
  		visit 'static_pages/home'
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App")
  	end
    it "should have the custom title" do
      visit 'static_pages/home'
      expect(page).not_to have_title("| Home")
    end

  end

  describe "Help Page " do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end

  	it "should have the right title" do
  		visit 'static_pages/help'
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
  	end

  end

  describe "About Page" do
  	it "should have the content 'About us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end

  	it "should have the right title" do
  		visit 'static_pages/about'
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
  	end

  end

  describe "Contact" do
  	it "should have the contect 'Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_content('Contact')
  end

    it "should have the title 'Title'" do
    	visit '/static_pages/contact'
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
end
end