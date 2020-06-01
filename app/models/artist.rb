class Artist < ApplicationRecord
  belongs_to :rank
  has_many :songs, dependent: :destroy
end
