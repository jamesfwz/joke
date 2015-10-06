class HomeController < ApplicationController
  def index
    @our_joke = OurJoke.first
  end
end