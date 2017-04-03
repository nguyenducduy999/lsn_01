class Category < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_closure_tree
end
