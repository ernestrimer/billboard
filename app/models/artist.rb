class Artist < ApplicationRecord
  belongs_to :rank
  has_many :songs, dependent: :destroy
  validates :name, :genre, presence: true
  validates :name, length: { minimum: 1 }
end