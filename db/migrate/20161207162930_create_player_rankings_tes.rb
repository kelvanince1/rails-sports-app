class CreatePlayerRankingsTes < ActiveRecord::Migration[5.0]
  def change
    create_table :player_rankings_tes do |t|
      t.string :name
      t.text :remaining_schedule

      t.timestamps
    end
  end
end
