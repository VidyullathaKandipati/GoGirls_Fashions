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

Product.destroy_all
#Female products
p1= Product.create(name: 'Floral printed wrap dress', cost: 30, size: 's', color: '', gender: 'women', brand:'Vero Moda', info: "Floral printed wrap dress");
p2= Product.create(name: 'Midi Skirt', cost: 75, size: 's', color: '', gender: 'women', brand:'Vero Moda', info: "Midi Skirt in Satin with Splices in Print");

#Male Products
p3 = Product.create(name: 'T-Shirt', cost: 50, size: 'm', color: '', gender: 'men', brand:'Jack & Jones', info: "Geometric Print T-Shirt");
p4 = Product.create(name: 'Blue jeans', cost: 157, size: 'm', color: 'blue', gender: 'men', brand:'Lee', info: "Low Slim Fit Stretch Blue Legacy Dark Wash Jeans");

Image.destroy_all
#Female images
i1= Image.create(url:'http://images.asos-media.com/inv/media/4/8/2/9/7769284/navyprint/image1xl.jpg');
i2= Image.create(url:'http://images.asos-media.com/inv/media/0/5/3/8/7408350/multi/image1xl.jpg');

#Male images
i3= Image.create(url:'http://images.asos-media.com/inv/media/1/5/8/5/7625851/black/image1xl.jpg');

i4= Image.create(url:'http://images.asos-media.com/inv/media/3/2/9/9/5939923/bluelegacy/image1xl.jpg');


Category.destroy_all
c1 = Category.create :name => 'pants'
c2 = Category.create :name => 'dresses'
c3 = Category.create :name => 'jackets'
c4 = Category.create :name => 'skirts'
c5 = Category.create :name => 'shorts'
c6 = Category.create :name => 'shirts'

p1.images << i1
p2.images << i2
p3.images << i3
p4.images << i4

p1.categories << c2
p2.categories << c4
p3.categories << c6
p4.categories << c1
