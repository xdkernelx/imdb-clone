class Film < ApplicationRecord
  belongs_to :category
  has_many :reviews
  has_many :reviewers, through: :reviews, foreign_key: 'reviewer_id'

  validates :name, :category_id, { presence: true }

  def trusted_users
    self.reviewers.where(trusted: true)
  end

  def regular_users
    self.reviewers.where(trusted: false)
  end

  def trusted_rating
    result = 0
    if trusted_users.length > 0
      result = total_rating(trusted_users) / trusted_users.length
    end
    return result.round(1)
  end

  def regular_rating
    result = 0
    if regular_users.length > 0
      result = total_rating(regular_users) / regular_users.length
    end
    return result.round(1)
  end

  private

  def total_rating(user_arr)
    sum = 0
    user_arr.each do |reviewer|
      review = reviewer.reviews.find_by(film_id: self.id)
      sum += review.rating
    end
    return sum
  end

end
