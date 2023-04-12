module MoviesHelper

  def average_stars(movie)
    if movie.average_stars.zero?
      content_tag(:strong, "No Reviews")
    else
      pluralize(number_with_precision(movie.average_stars, precision: 1), "star")
    end
  end

  def hit_or_flop(movie)
    if movie.flop?
      "FLOPOID!"
    else
      number_to_currency(movie.total_gross, precision: 0)
    end
  end

  def main_image(movie)
    if movie.main_image.attached?
      image_tag movie.main_image.variant(resize_to_limit: [150,nil] )
    else
      image_tag "placeholder.png"
    end
  end

  def year_of(movie)
    movie.released_on.strftime("%Y")
  end


end
