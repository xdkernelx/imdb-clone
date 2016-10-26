class Review < ApplicationRecord
  belongs_to :reviewer, class_name: 'User', foreign_key: 'reviewer_id'
  belongs_to :film
  has_one :category, through: :film








end
