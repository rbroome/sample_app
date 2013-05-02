require 'spec_helper'

describe "Static Pages" do
   
   let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home Page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector ('h1', :text => 'Sample App')
    end
  end

  describe "Help pages" do
    it "Should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "Should have the title 'Help'" do
      visit '/static_pages/help/'
      page.should have_selector('title',
                                :text => "#{base_title} | Help")
    end
  end

  describe "About Page" do
    it "should have this content 'About Us'" do
      visit '/static_pages/about/'
      page.should have_selector('h1', :text=>'About Us')
    end
    it "Should have the title 'About'" do
      visit '/static_pages/about/'
      page.should have_selector('title',
                                :text => "#{base_title} | About")
    end
  end

  describe "Contact Page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end
    it "should hae the title 'Contact'"do
       visit '/static_pages/contact'
       page.should have_selector('title',
                                 :text => "#{base_title} | Contact")
    end
  end
end
