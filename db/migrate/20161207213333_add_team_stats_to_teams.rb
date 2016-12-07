class AddTeamStatsToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :passing_yards_allowed, :integer
    add_column :teams, :rushing_yards_allowed, :integer
    add_column :teams, :points_allowed, :integer
    add_column :teams, :average_age, :float
  end
end
