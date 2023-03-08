class Movie < ApplicationRecord
  def self.released
    Movie.where("released_on < ?", Time.now).order "released_on desc"
  end

  def flop?
    total_gross < 225000000
  end
end
