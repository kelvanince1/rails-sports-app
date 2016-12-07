class PlayerRankingsQb < ApplicationRecord
  belongs_to :players, optional: true
end
