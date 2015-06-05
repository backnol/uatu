# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

TwUser.new_from_screen_name('verge').save!
TwUser.new_from_screen_name('vergescience').save!
TwUser.new_from_screen_name('gizmodo').save!
TwUser.new_from_screen_name('engadget').save!
TwUser.new_from_screen_name('newsycbot').save!
TwUser.new_from_screen_name('marketwatch').save!
TwUser.new_from_screen_name('nasa').save!