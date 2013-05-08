require 'test_helper'

class CatalogControllerTest < ActionController::TestCase
  
  setup :activate_authlogic

  def setup
   current_user = UserSession.create(users(:global_admin))
  end
  
  test "should search indexed records" do
     VCR.use_cassette('blacklight search', :match_requests_on => [:body]) do
       post :index, :q => "Charles Adler", :search_field => "All Collections"
     end
     assert_template :index
  end
  
  test "should match components and do another solr search" do
    VCR.use_cassette('component search', :match_requests_on => [:body]) do
       post :index, :q => "family papers", :search_field => "All Collections"
     end
     assert_template :index
  end
  
  test "should match dsc path without components" do
    VCR.use_cassette('component search without results', :match_requests_on => [:body]) do
       post :index, :q => "Tony Alleyne", :search_field => "All Collections"
     end
     assert_template :index
  end
  
end
