class User < ApplicationRecord
  has_many :comments, foreign_key: 'commenter_id'
  has_many :reviews, foreign_key: 'reviewer_id'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, :email, { presence: true }

end
