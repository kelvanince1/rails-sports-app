# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Player.destroy_all
Team.destroy_all
Start.destroy_all
Sit.destroy_all
PlayerRankingsQb.destroy_all
PlayerRankingsRb.destroy_all
PlayerRankingsWr.destroy_all
PlayerRankingsTe.destroy_all


pqb = PlayerRankingsQb.create(name: 'Drew Brees', remaining_schedule: '')
PlayerRankingsQb.create(name: 'Aaron Rodgers', remaining_schedule: '')
PlayerRankingsQb.create(name: 'Matt Ryan', remaining_schedule: '')
PlayerRankingsQb.create(name: 'Derek Carr', remaining_schedule: '')
PlayerRankingsQb.create(name: 'Tom Brady', remaining_schedule: '')
PlayerRankingsQb.create(name: 'Kirk Cousins', remaining_schedule: '')
PlayerRankingsQb.create(name: 'Ben Roethlisberger', remaining_schedule: '')

prb = PlayerRankingsRb.create(name: 'David Johnson', remaining_schedule: '')
PlayerRankingsRb.create(name: 'Ezekiel Elliott', remaining_schedule: '')
PlayerRankingsRb.create(name: 'Melvin Gordon', remaining_schedule: '')
PlayerRankingsRb.create(name: 'LeGarrette Blount', remaining_schedule: '')
PlayerRankingsRb.create(name: 'DeMarco Murray', remaining_schedule: '')
PlayerRankingsRb.create(name: 'LeVeon Bell', remaining_schedule: '')
PlayerRankingsRb.create(name: 'Jordan Howard', remaining_schedule: '')
PlayerRankingsRb.create(name: 'Jay Ajayi', remaining_schedule: '')

pwr = PlayerRankingsWr.create(name: 'Antonio Brown', remaining_schedule: '')
PlayerRankingsWr.create(name: 'Odell Beckham', remaining_schedule: '')
PlayerRankingsWr.create(name: 'Mike Evans', remaining_schedule: '')
PlayerRankingsWr.create(name: 'Julio Jones', remaining_schedule: '')
PlayerRankingsWr.create(name: 'Amari Cooper', remaining_schedule: '')
PlayerRankingsWr.create(name: 'Jordy Nelson', remaining_schedule: '')
PlayerRankingsWr.create(name: 'AJ Green', remaining_schedule: '')
PlayerRankingsWr.create(name: 'TY Hilton', remaining_schedule: '')
PlayerRankingsWr.create(name: 'Jamsin Crowder', remaining_schedule: '')

pte = PlayerRankingsTe.create(name: 'Rob Gronkowski', remaining_schedule: '')
PlayerRankingsTe.create(name: 'Greg Olsen', remaining_schedule: '')
PlayerRankingsTe.create(name: 'Jimmy Graham', remaining_schedule: '')
PlayerRankingsTe.create(name: 'Jordan Reed', remaining_schedule: '')
PlayerRankingsTe.create(name: 'Delanie Walker', remaining_schedule: '')
PlayerRankingsTe.create(name: 'Travis Kelce', remaining_schedule: '')
PlayerRankingsTe.create(name: 'Cameron Brate', remaining_schedule: '')
PlayerRankingsTe.create(name: 'Dwayne Allen', remaining_schedule: '')

t = Team.create(team: 'Atlanta', passing_yards_allowed: 290, rushing_yards_allowed: 101, points_allowed: 331, average_age: 27.08)
Team.create(team: 'Arizona', passing_yards_allowed: 199, rushing_yards_allowed: 98, points_allowed: 251, average_age: 26.09)
Team.create(team: 'Baltimore', passing_yards_allowed: 222, rushing_yards_allowed: 74, points_allowed: 207, average_age: 26.43)
Team.create(team: 'Buffalo', passing_yards_allowed: 230, rushing_yards_allowed: 116, points_allowed: 274, average_age: 26.3)
Team.create(team: 'Carolina', passing_yards_allowed: 277, rushing_yards_allowed: 93, points_allowed: 321, average_age: 26.53)
Team.create(team: 'Chicago', passing_yards_allowed: 220, rushing_yards_allowed: 107, points_allowed: 270, average_age: 25.85)
Team.create(team: 'Cincinnati', passing_yards_allowed: 251, rushing_yards_allowed: 115, points_allowed: 259, average_age: 26.3)
Team.create(team: 'Cleveland', passing_yards_allowed: 259, rushing_yards_allowed: 141, points_allowed: 352, average_age: 25.08)
Team.create(team: 'Dallas', passing_yards_allowed: 276, rushing_yards_allowed: 82, points_allowed: 228, average_age: 26)
Team.create(team: 'Denver', passing_yards_allowed: 193, rushing_yards_allowed: 123, points_allowed: 229, average_age: 25.47)
Team.create(team: 'Detroit', passing_yards_allowed: 257, rushing_yards_allowed: 98, points_allowed: 251, average_age: 26.09)
Team.create(team: 'Green Bay', passing_yards_allowed: 254, rushing_yards_allowed: 93, points_allowed: 302, average_age: 25.36)
Team.create(team: 'Houston', passing_yards_allowed: 208, rushing_yards_allowed: 108, points_allowed: 257, average_age: 26.17)
Team.create(team: 'Indianapolis', passing_yards_allowed: 273, rushing_yards_allowed: 110, points_allowed: 311, average_age: 26.52)
Team.create(team: 'Jacksonville', passing_yards_allowed: 196, rushing_yards_allowed: 116, points_allowed: 313, average_age: 25.43)
Team.create(team: 'Kansas City', passing_yards_allowed: 263, rushing_yards_allowed: 122, points_allowed: 242, average_age: 25.54)
Team.create(team: 'Los Angeles', passing_yards_allowed: 231, rushing_yards_allowed: 114, points_allowed: 262, average_age: 25)
Team.create(team: 'Miami', passing_yards_allowed: 243, rushing_yards_allowed: 130, points_allowed: 278, average_age: 26.19)
Team.create(team: 'Minnesota', passing_yards_allowed: 200, rushing_yards_allowed: 104, points_allowed: 209, average_age: 26.58)
Team.create(team: 'New England', passing_yards_allowed: 243, rushing_yards_allowed: 94, points_allowed: 207, average_age: 26.07)
Team.create(team: 'New Orleans', passing_yards_allowed: 277, rushing_yards_allowed: 98, points_allowed: 335, average_age: 26.4)
Team.create(team: 'New York Jets', passing_yards_allowed: 264, rushing_yards_allowed: 90, points_allowed: 307, average_age: 26.23)
Team.create(team: 'New York Giants', passing_yards_allowed: 265, rushing_yards_allowed: 91, points_allowed: 237, average_age: 26.02)
Team.create(team: 'Oakland', passing_yards_allowed: 265, rushing_yards_allowed: 125, points_allowed: 299, average_age: 26.02)
Team.create(team: 'Philadelphia', passing_yards_allowed: 244, rushing_yards_allowed: 101, points_allowed: 245, average_age: 26.49)
Team.create(team: 'Pittsburgh', passing_yards_allowed: 256, rushing_yards_allowed: 92, points_allowed: 236, average_age: 26.34)
Team.create(team: 'San Diego', passing_yards_allowed: 271, rushing_yards_allowed: 89, points_allowed: 319, average_age: 25.73)
Team.create(team: 'San Francisco', passing_yards_allowed: 247, rushing_yards_allowed: 169, points_allowed: 370, average_age: 26.08)
Team.create(team: 'Seattle', passing_yards_allowed: 231, rushing_yards_allowed: 99, points_allowed: 194, average_age: 25.6)
Team.create(team: 'Tampa Bay', passing_yards_allowed: 250, rushing_yards_allowed: 116, points_allowed: 285, average_age: 25.7)
Team.create(team: 'Tennessee', passing_yards_allowed: 270, rushing_yards_allowed: 92, points_allowed: 296, average_age: 25.87)
Team.create(team: 'Washington', passing_yards_allowed: 255, rushing_yards_allowed: 114, points_allowed: 295, average_age: 26.36)

star = Start.create(player: 'Andrew Luck', start_em: 'vs Texans. Luck was flawless against the Jets on Monday night. Expect another productive night this Sunday, even against a good Texans defence.')
Start.create(player: 'Phillip Rivers', start_em: '@ Panthers. Rivers has been on good form this season and has a mathchup agains an ailing Panthers defence this Sunday. Expect points.')
Start.create(player: 'Jameis Winston', start_em: 'vs Saints. How about this guy? Winston played like a veteran in the Bucs week 12 win over the Seahawks, then this past Sunday went to San Diego and won a shootout with the Chargers effective offense. No reason that will stop against the Saints this Sunday.')
Start.create(player: 'Eli Manning', start_em: 'vs Cowboys. Expect the Giants to put up  more points against the Cowboys on Sunday night football than the Vikings did last week. Manning has been far from amazing and susceptible to errors in the red zone. But this game looks good for Eli, on paper at least.')

sit = Sit.create(player: 'Marcus Mariota', sit_em: 'vs Broncos. The Broncos D has been the most effective in the league against the pass. Look for the Titans to utilize their running game more than their passing this Sunday. ')
Sit.create(player: 'Aaron Rodgers', sit_em: 'vs Seahawks. It would not surprise too many if the Packers go on a run and end up making the playoffs, but this weekends matchup against Seattle is a tricky one to maneuvre past. Rodgers should see a slightly lower return than usual')
Sit.create(player: 'Sam Bradford', sit_em: '@Jaguars. The Jaguars have been statistically surprisingly effective against opposition quarterbacks. The Vikings offense has issues. Better to count on seeing lower production from them again this Sunday.')
Sit.create(player: 'Ben Roethlisberger', sit_em: '@Bills. Be cautious with Big Ben this Sunday. Playing Buffalo in New York can be a tough one. This game has big potentail to be a low scoring affair.')
