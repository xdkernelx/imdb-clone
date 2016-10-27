class Category < ApplicationRecord
  has_many :films
  has_many :reviews, through: :films










end
