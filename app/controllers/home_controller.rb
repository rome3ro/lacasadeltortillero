class HomeController < ApplicationController
  def index
    @home = Home.find(:first)
    
  end
end
