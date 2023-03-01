module MoviesHelper
  def hit_or_flop(movie)
    if movie.flop?
      "FLOPOID!"
    else
      number_to_currency(movie.total_gross, precision: 0)
    end
  end

  def year_of(movie)
    movie.released_on.strftime("%Y")
  end
end
