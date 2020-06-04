class Song < ApplicationRecord
  belongs_to :artist
  validates :name, :duration, presence: true
  validates :duration, numericality: { only_integer: true }
  validates :name, length: { minimum: 1 }
end