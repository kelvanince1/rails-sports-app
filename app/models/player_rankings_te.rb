class PlayerRankingsTe < ApplicationRecord
  belongs_to :players, optional: true
end
