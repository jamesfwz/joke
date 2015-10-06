class HomeController < ApplicationController
  def index
    @first_joke = OurJoke.first
  end
end