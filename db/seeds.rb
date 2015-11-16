# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Game.destroy_all
Play.destroy_all

User.create([{email: 'kharvey0@netscape.com', password: 'password'}, {email: 'lhamilton1@columbia.edu', password: 'owh2841adso'}, {email: 'tkelley2@merriam-webster.com', password: 'aos1ehashoi'}, {email: 'rbryant3@163.com', password: 'aaaa111b'}, {email: 'rbell4@cnbc.com', password: 'fl1eAJoy7J'}])
Game.create([{title: 'Smashup', user_id: 1}, {title: 'Machi Koro', user_id: 2}, {title: 'Star Realms', user_id: 3}, {title: 'Burgle Brothers', user_id: 2}, {title: 'Star Realms', user_id: 4}, {title: 'Smashup', user_id: 2}] )
Play.create([{title: 'Play 1', game_id: 1, user_id: 1}, {title: 'Play 2', game_id: 2, user_id: 2}, {title: 'Play 3', game_id: 3, user_id: 3}, {title: 'Play 4', game_id: 4, user_id: 2}, {title: 'Play 5', game_id: 5, user_id: 2}])
