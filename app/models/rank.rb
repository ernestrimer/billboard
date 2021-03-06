class Rank < ApplicationRecord
  #The parent model
  validates :current_rank, :last_week, :total_weeks, presence: true
  validates :current_rank, :last_week, :total_weeks, numericality: { only_integer: true }
  has_many :artists, dependent: :destroy
  # has_one: :artist ??? because there can only be one artist for a given rank?
end