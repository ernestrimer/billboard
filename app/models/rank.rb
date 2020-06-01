class Rank < ApplicationRecord
  has_many :artists, dependent: :destroy
  # has_one: :artist ??? because there can only be one artist for a given rank?
end
