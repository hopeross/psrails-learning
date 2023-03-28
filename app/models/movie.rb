class Movie < ApplicationRecord

  has_many :reviews, -> {order(created_at: :desc)}, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :fans, through: :favorites, source: :user
  has_many :characterizations, dependent: :destroy
  has_many :genres, through: :characterizations

  validates :title, :released_on, :duration, presence: true

  validates :description, length: { minimum: 25 }

  validates :total_gross, numericality: { greater_than_or_equal_to: 0 }

  validates :image_file_name, format: {
    with: /\w+\.(jpg|png)\z/i,
    message: "must be a JPG or PNG image"
  }

  RATINGS = %w(G PG PG-13 R NC-17)

  validates :rating, inclusion: { in: RATINGS }

  scope :released, -> { where("released_on < ?", Time.now).order("released_on desc")}
  scope :upcoming, -> { where("released_on > ?", Time.now).order("released_on asc")}
  scope :recent, -> (max=5) { released.limit(max) }
  scope :flops, -> { released.where("total_gross < 225000000").order(total_gross: :desc)}
  scope :hits, -> { released.where("total_gross > 450000000").order(total_gross: :asc)}


  def flop?
    total_gross.blank? || total_gross < 225_000_000
  end

  def average_stars
    reviews.average(:stars) || 0.0
  end

  def average_stars_as_percent
    (self.average_stars / 5.0) * 100.0
  end
end
