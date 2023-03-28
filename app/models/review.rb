class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates :comment, length: { minimum: 4 }

  STARS = [1, 2, 3, 4, 5]

  validates :stars, inclusion: {
    in: STARS,
    message: "must be between 1 and 5"
  }

  # scope :released, -> { where("released_on < ?", Time.now).order("released_on desc")}
  #   scope :flops, -> { released.where("total_gross < 225000000").order(total_gross: :desc)}

  scope :past_n_days, -> (numDays) { where("created_at >= ?", numDays.days.ago)}

  def stars_as_percent
    (stars / 5.0) * 100.0
  end
end
