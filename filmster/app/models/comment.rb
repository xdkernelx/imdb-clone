class Comment < ApplicationRecord
  belongs_to :review
  belongs_to :commenter, class_name: 'User', foreign_key: 'commenter_id'
end
