class MoviesController < ApplicationController
  def index
    @movies = ["Star Wars", "Avengers", "Top Gun", "Iron Man"]
  end
end
