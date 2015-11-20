# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Mission.destroy_all
Character.destroy_all
Play.destroy_all
Game.destroy_all
User.destroy_all


user = User.create(email: "rachel@email.com", password: "password")
burgle = user.games.create(title: "Burgle Bros.", num_stars: 5, image: "burgle-bros-lineup.png", logo: "https://i.ytimg.com/vi/WFjog3wQu9k/maxresdefault.jpg", purchase_url: "http://www.burglebros.com/")
burgle.characters.create([{name: "The Acrobat", image: "acrobat.jpg"}, {name: "The Hacker", image: "hacker.jpg"}, {name: "The Hawk", image: "hawk.jpg"}, {name: "The Juicer", image: "juicer.jpg"}, {name: "The Peterman", image: "peterman.jpg"}, {name: "The Raven", image: "raven.jpg"}, {name: "The Rigger", image: "rigger.jpg"}, {name: "The Rook", image: "rook.jpg"}, {name: "The Spotter", image: "spotter.jpg"}])

# User.create([{email: 'kharvey0@netscape.com', password: 'password'}, {email: 'lhamilton1@columbia.edu', password: 'owh2841adso'}, {email: 'tkelley2@merriam-webster.com', password: 'aos1ehashoi'}, {email: 'rbryant3@163.com', password: 'aaaa111b'}, {email: 'rbell4@cnbc.com', password: 'fl1eAJoy7J'}])
# Game.create([{title: 'Smashup', user_id: 1}, {title: 'Machi Koro', user_id: 2}, {title: 'Star Realms', user_id: 3}, {title: 'Burgle Brothers', user_id: 2}, {title: 'Star Realms', user_id: 4}, {title: 'Smashup', user_id: 2}] )
# Play.create([{title: 'Play 1', game_id: 1, user_id: 1}, {title: 'Play 2', game_id: 2, user_id: 2}, {title: 'Play 3', game_id: 3, user_id: 3}, {title: 'Play 4', game_id: 4, user_id: 2}, {title: 'Play 5', game_id: 5, user_id: 2}])
