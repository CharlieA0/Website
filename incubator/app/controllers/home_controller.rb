class HomeController < ApplicationController
  def index
    @desc = Description.find(1)
  end
end
