class Ranking < ApplicationRecord
  validates :team, presence: true

  belongs_to :players, optional: true
  belongs_to :teams
end
