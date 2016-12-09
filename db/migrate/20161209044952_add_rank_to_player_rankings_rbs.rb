class AddRankToPlayerRankingsRbs < ActiveRecord::Migration[5.0]
  def change
    add_column :player_rankings_rbs, :rank, :integer
  end
end
