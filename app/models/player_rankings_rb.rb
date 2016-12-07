class PlayerRankingsRb < ApplicationRecord
  belongs_to :players, optional: true
end
