class HomeController < ApplicationController
  def index
    redirect_to candidates_path
  end
end
