class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  has_many :votes, as: :votable, dependent: :destroy
  has_many :voters, through: :votes, source: :user

  scope :order_new_answers, ->{order created_at: :desc}
  scope :order_vote_answers, ->{order vote_count: :desc}
end
