class AddRankToPlayerRankingsWrs < ActiveRecord::Migration[5.0]
  def change
    add_column :player_rankings_wrs, :rank, :integer
  end
end
