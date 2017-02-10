# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
u1 = User.create(name: 'Jess', email: 'jess@ga.com', password: 'chicken', admin: true, contact: '+61897798404', address: 'Sydney');
u2 = User.create(name: 'Latha', email: 'latha@ga.com', password: 'chicken', admin: true, contact: '+61897768404', address: 'Sydney');
u3 = User.create(name: 'Mel', email: 'mel@ga.com', password: 'chicken', admin: true, contact: '+61897798487', address: 'Sydney');
u4 = User.create(name: 'Naomi', email: 'naomi@ga.com', password: 'chicken', admin: true, contact: '+61897798465', address: 'Sydney');
