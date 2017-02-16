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
p1 = Product.create(name: 'Floral printed wrap dress', cost: 30, size: 's', color: '', gender: 'women', brand:'Vero Moda', info: "Floral printed wrap dress.");
p2 = Product.create(name: 'Midi Skirt', cost: 75, size: 's', color: '', gender: 'women', brand:'Vero Moda', info: "Midi Skirt in Satin with Splices in Print.");
p9 = Product.create(name: 'Pyjama Shirt Dress', cost: 69, size: 's', color: 'black', gender: 'women', brand:'Monki', info: "Pyjama Shirt Dress with white piping.");
p10 = Product.create(name: 'Wide Leg Culottes with Frill Hem.', cost: 69, size: 's', color: 'black', gender: 'women', brand:'Neon Rose', info: "Smooth woven frabric, mid rise waist");
p11 = Product.create(name: 'Metallic Pleated Midi Skirt.', cost: 52, size: 's', color: 'silver', gender: 'women', brand:'Pimkie', info: "Semi-sheer fabric, high waist.");
p12 = Product.create(name: 'Floral embroidered Bomber Jacket', cost: 459, size: 'm', color: 'floral', gender: 'women', brand:'Needle and Thread', info: "Fully lined, zip fastening.");
p13 = Product.create(name: 'Joshua Floral Mini Dress', cost: 229, size: 'm', color: 'navy/floral', gender: 'women', brand:'Oxford', info: "Mock turtle neck and flattering fit.");
p14 = Product.create(name: 'Bella Velvet Dress', cost: 140, size: 's', color: 'black', gender: 'women', brand:'Bardot', info: "Off-the-shoulder neckline and tactile velvet gives this piece a timeless appeal.");
p15 = Product.create(name: 'Soul Silence Dress', cost: 119, size: 'l', color: 'ash', gender: 'women', brand:'One Teaspoon', info: "Comfy and relaxed fit with frilled cuffs and hemline. Deep v-neck and tie detail on the neck.");
p16 = Product.create(name: 'Dado Skirt', cost: 500, size: 's', color: 'silver', gender: 'women', brand:'Max & Co', info: "A-lined skirt crafted from silver laminated leather, it will bring a futuristic element to your wardrobe.");
p17 = Product.create(name: 'Wonder Lace-Up Skirt', cost: 170, size: 'm', color: 'black', gender: 'women', brand:'Ministry of Style', info: "The cotton-linen skirt is designed for summer, keeping you cool and comfortable, while the eyelet lace-up detail makes a statement.");
p18 = Product.create(name: 'LS Scoop Bodysuit', cost: 40, size: 'l', color: 'nude', gender: 'women', brand:'Miss Selfridge', info: "Ideal for layering, made from a super-soft stretch jersey. Wear it under skirts or high-waisted pants for a clean, no-fuss outfit.");
p19 = Product.create(name: 'Boxy Tee', cost: 40, size: 'l', color: 'stripe', gender: 'women', brand:'Assembly Label', info: "Cut for a relaxed fit, this short-sleeved t-shirt is made from breathable blend of linen and cotton for complete softness and a relaxed drape.");
p20 = Product.create(name: 'Esmerelda Wrap Top', cost: 60, size: 'm', color: 'gingham', gender: 'women', brand:'Lioness', info: "Billowing gathered sleeves that make maximum impact, this top is perfect for dressing up any look. Style yours with distressed denim to balance the feminine silhouette or play on the delicate look by pairing the top with an A-line mini skirt.");




#Male Products
p3 = Product.create(name: 'T-Shirt', cost: 50, size: 'm', color: '', gender: 'men', brand:'Jack & Jones', info: "Geometric Print T-Shirt");
p4 = Product.create(name: 'Blue jeans', cost: 157, size: 'm', color: 'blue', gender: 'men', brand:'Lee', info: "Low Slim Fit Stretch Blue Legacy Dark Wash Jeans");
p5 = Product.create(name: 'Slim Chinos', cost: 40, size: 'l', color: 'black', gender: 'men', brand:'ASOS', info: "Stretch woven fabric, slim fit");
p6 = Product.create(name: 'Cropped Pants', cost: 69, size: 's', color: 'Navy', gender: 'men', brand:'Only & Sons', info: "Slim fit, smooth woven fabric");
p7 = Product.create(name: 'Revere Shirt', cost: 98, size: 'm', color: 'blue', gender: 'men', brand:'Reclaimed Vintage', info: "Romeo and Juliet inspired shirt");
p8 = Product.create(name: 'California T-Shirt', cost: 40, size: 'm', color: '', gender: 'men', brand:'Adidas', info: "Adidas Originals 3 Stripe T-Shirt");
# Image.destroy_all
# #Female images
# i1= Image.create(url:'http://images.asos-media.com/inv/media/4/8/2/9/7769284/navyprint/image1xl.jpg');
# i2= Image.create(url:'http://images.asos-media.com/inv/media/0/5/3/8/7408350/multi/image1xl.jpg');
#
# #Male images
# i3= Image.create(url:'http://images.asos-media.com/inv/media/1/5/8/5/7625851/black/image1xl.jpg');
#
# i4= Image.create(url:'http://images.asos-media.com/inv/media/3/2/9/9/5939923/bluelegacy/image1xl.jpg');


Category.destroy_all
c1 = Category.create(name: 'pants', gender: 'unisex');
c2 = Category.create(name: 'dresses', gender: 'women');
c3 = Category.create(name: 'jackets', gender: 'unisex');
c4 = Category.create(name: 'skirts', gender: 'women');
c5 = Category.create(name: 'shorts', gender: 'unisex');
c6 = Category.create(name: 'shirts', gender: 'unisex');

# p1.images << i1
# p2.images << i2
# p3.images << i3
# p4.images << i4

p1.categories << c2
p2.categories << c4
p3.categories << c6
p4.categories << c1
p5.categories << c1
p6.categories << c1
p7.categories << c6
p8.categories << c6
p9.categories << c2
p10.categories << c1
p11.categories << c4
p12.categories << c3
