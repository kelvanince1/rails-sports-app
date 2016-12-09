class AddRankToPlayerRankingsTes < ActiveRecord::Migration[5.0]
  def change
    add_column :player_rankings_tes, :rank, :integer
  end
end
