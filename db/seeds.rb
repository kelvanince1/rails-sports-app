# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Player.destroy_all
# Team.destroy_all
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

star = Start.create(player: 'Andrew Luck', start_em: 'vs Texans. Luck was flawless against the Jets on Monday night. Expect another productive night this Sunday, even against a good Texans defence.')
Start.create(player: 'Phillip Rivers', start_em: '@ Panthers. Rivers has been on good form this season and has a mathchup agains an ailing Panthers defence this Sunday. Expect points.')
Start.create(player: 'Jameis Winston', start_em: 'vs Saints. How about this guy? Winston played like a veteran in the Bucs week 12 win over the Seahawks, then this past Sunday went to San Diego and won a shootout with the Chargers effective offense. No reason that will stop against the Saints this Sunday.')
Start.create(player: 'Eli Manning', start_em: 'vs Cowboys. Expect the Giants to put up  more points against the Cowboys on Sunday night football than the Vikings did last week. Manning has been far from amazing and susceptible to errors in the red zone. But this game looks good for Eli, on paper at least.')

sit = Sit.create(player: 'Marcus Mariota', sit_em: 'vs Broncos. The Broncos D has been the most effective in the league against the pass. Look for the Titans to utilize their running game more than their passing this Sunday. ')
Sit.create(player: 'Aaron Rodgers', sit_em: 'vs Seahawks. It would not surprise too many if the Packers go on a run and end up making the playoffs, but this weekends matchup against Seattle is a tricky one to maneuvre past. Rodgers should see a slightly lower return than usual')
Sit.create(player: 'Sam Bradford', sit_em: '@Jaguars. The Jaguars have been statistically surprisingly effective against opposition quarterbacks. The Vikings offense has issues. Better to count on seeing lower production from them again this Sunday.')
Sit.create(player: 'Ben Roethlisberger', sit_em: '@Bills. Be cautious with Big Ben this Sunday. Playing Buffalo in New York can be a tough one. This game has big potentail to be a low scoring affair.')
