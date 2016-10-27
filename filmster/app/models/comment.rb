class Comment < ApplicationRecord
  belongs_to :review
  belongs_to :commenter, class_name: 'User', foreign_key: 'commenter_id'
  has_one :film, through: :review

  validates :commenter_id, :review_id, { presence: true }

end
