class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_movies, through: :favorites, source: :movie


  has_secure_password

  validates :name, presence: true

  validates :email, format: { with: /\S+@\S+/ }, uniqueness: {case_sensitive: false}

  validates :username, format: { with: /\A[A-Z0-9]+\z/i }, uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 10, allow_blank: true }

  # scope :released, -> { where("released_on < ?", Time.now).order("released_on desc")}
  #   scope :flops, -> { released.where("total_gross < 225000000").order(total_gross: :desc)}

  scope :by_name, -> { order(:username)}
  scope :not_admin, -> { by_name.where(admin: false)}
end
