class Category < ApplicationRecord
  has_many :films
  has_many :reviews, through: :films
  # has_many :comments, through: :reviews, source: :










end
