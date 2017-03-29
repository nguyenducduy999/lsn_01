class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  has_many :votes, as: :votable, dependent: :destroy
  has_many :voters, through: :votes, source: :user
end
