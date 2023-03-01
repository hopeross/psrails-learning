class MoviesController < ApplicationController
  def index
    #@movies = ["Star Wars", "Avengers", "Top Gun", "Iron Man"]
    @movies = Movie.all
  end
end
