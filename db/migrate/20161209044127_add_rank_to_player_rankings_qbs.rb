class AddRankToPlayerRankingsQbs < ActiveRecord::Migration[5.0]
  def change
    add_column :player_rankings_qbs, :rank, :integer
  end
end
