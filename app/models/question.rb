require "elasticsearch/model"
class Question < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  belongs_to :category
  belongs_to :user

  has_many :answers, dependent: :destroy
  has_many :reports, dependent: :destroy
  has_many :reporters, through: :reports, source: :user
  has_many :votes, as: :votable, dependent: :destroy
  has_many :voters, through: :votes, source: :user

  scope :hot_questions, ->{(order vote_count: :DESC).limit 5}
  scope :order_new_questions, ->{order created_at: :desc}
  scope :order_vote_questions, ->{order vote_count: :desc}
end
Question.__elasticsearch__.create_index!
Question.__elasticsearch__.create_index! force: true
Question.import force: true
