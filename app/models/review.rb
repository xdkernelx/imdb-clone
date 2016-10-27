class Review < ApplicationRecord
  belongs_to :reviewer, class_name: 'User', foreign_key: 'reviewer_id'
  belongs_to :film
  has_one :category, through: :film

  validates :title, :body, :rating, :reviewer_id, :film_id, { presence: true }
  validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: 5 }



end
