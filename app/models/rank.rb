class Rank < ApplicationRecord
  has_many :artists
  # has_one: :artist ???
end
