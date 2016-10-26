class Film < ApplicationRecord
  belongs_to :category
  has_many :reviews
  has_many :reviewers, through: :reviews, foreign_key: 'reviewer_id'
end
