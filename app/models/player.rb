class Player < ApplicationRecord
  validates :name, presence: true
  validates :position, presence: true
  validates :age, presence: true
  validates :touchdowns, presence: true
  validates :team, presence: true
  
  belongs_to :teams, optional: true
end
