class Film < ApplicationRecord
  belongs_to :category
  has_many :reviews
  has_many :reviewers, through: :reviews, foreign_key: 'reviewer_id'

  validates :name, :category_id, { presence: true }

  def trusted_users
    self.reviewers.where(trusted: true)
  end

end
