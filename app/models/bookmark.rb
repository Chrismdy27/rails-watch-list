class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  #validates :movie, presence: true, uniqueness: { scope: :movie_id, message: 'Must be unique'}
  #validates :list, presence: true, uniqueness: { scope: :list_id, message: 'Must be unique'}
  validates :comment, presence: true, length: { minimum: 6 }
  validates_uniqueness_of :movie_id, scope: [:list_id]
end
