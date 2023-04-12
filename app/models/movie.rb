class Movie < ApplicationRecord
  before_save :set_slug

  has_many :reviews, -> { order(created_at: :desc) }, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :fans, through: :favorites, source: :user
  has_many :characterizations, dependent: :destroy
  has_many :genres, through: :characterizations

  validates :title, :released_on, :duration, presence: true

  validates :title, uniqueness: true

  validates :description, length: { minimum: 25 }

  validates :total_gross, numericality: { greater_than_or_equal_to: 0 }

  validate :acceptable_image

  has_one_attached :main_image

  RATINGS = %w(G PG PG-13 R NC-17)

  validates :rating, inclusion: { in: RATINGS }

  scope :released, -> { where("released_on < ?", Time.now).order("released_on desc") }
  scope :upcoming, -> { where("released_on > ?", Time.now).order("released_on asc") }
  scope :recent, -> (max = 5) { released.limit(max) }
  scope :flops, -> { released.where("total_gross < 225000000").order(total_gross: :desc) }
  scope :hits, -> { released.where("total_gross > 450000000").order(total_gross: :asc) }

  def average_stars
    reviews.average(:stars) || 0.0
  end

  def average_stars_as_percent
    (self.average_stars / 5.0) * 100.0
  end

  def flop?
    total_gross.blank? || total_gross < 225_000_000
  end

  def to_param
    slug
  end

  private

  def acceptable_image
    return unless main_image.present?

    unless main_image.blob.byte_size <= 1.megabyte
      errors.add(:main_image, "is too big")
    end

    acceptable_types = ["image/png", "image/jpg"]
    unless acceptable_types.include?(main_image.content_type)
      errors.add( :main_image, "not valid image type")
    end
  end

  def set_slug
    self.slug = title.parameterize
  end
end
