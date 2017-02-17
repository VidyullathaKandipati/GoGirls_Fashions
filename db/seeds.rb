# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Need to explicitlity delete Orders


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

p50 = Product.create(name: 'Classic Joggers', cost: 99, size: 'm', color: 'grey', gender: 'men', brand:'Onzie', info: "Luxurious and considered, the Classsic Joggers from Onzie bring breathability, freedom of movement and style to your loungewear.");
p51 = Product.create(name: 'Gazelle Pants', cost: 100, size: 'm', color: 'black', gender: 'men', brand:'New Balance', info: 'The New Balance Gazelle Pants are made from a soft knit fabric that draws moisture away from the skin. Reflective taping ensures visibility in low light.');
p52 = Product.create(name: 'ARQ Pants', cost: 120, size: 'm', color: 'black', gender: 'men', brand:'New Balance', info: 'Soft fleece track pants with all the essential features, the New Balance Classic Arq Pants were made for your training session. Their thick construction with secure zip compartments mean they double as comfy casual wear.');
p53 = Product.create(name: 'Prime Tech Trackpants', cost: 70, size: 'l', color: 'black', gender: 'men', brand:'Muscle Republic', info: 'The Muscle Republic Prime Trackpants have been constructed for the perfect fit. Slimline through the legs, they feature a wide waistband with and adjustable and durable drawstring. Perfect for cool mornings and evenings.');
p54 = Product.create(name: 'Tiro Track Pants', cost: 90, size: 'l', color: 'black', gender: 'men', brand:'Adidas', info: "The Tiro Track Pants by adidas Originals have a classic design. Featuring an elasticised waist and the brand's name on the side, the black pants are sporty and comfortable.");
p55 = Product.create(name: 'Crosstrain Pants', cost: 60, size: 'l', color: 'black', gender: 'men', brand:'Champion', info: 'The Champion Crosstrain Pants are your essential sports trackies. Breathable yet warm and insulated, the pants provide ultimate comfort and feature zip pockets for security.');

p56 = Product.create(name: 'May Crew-Neck Tee', cost: 50, size: 'l', color: 'white', gender: 'men', brand:'Tommy Hilfiger', info: "Embroidered with the luxury brand's signature logo on the chest, the AU SP15 New May Crew-Neck Tee from Tommy Hilfiger will make a smart choice for off-duty days.");
p57 = Product.create(name: 'May Crew-Neck Tee', cost: 50, size: 'l', color: 'black', gender: 'men', brand:'Champion', info: "Embroidered with the luxury brand's signature logo on the chest, the AU SP15 New May Crew-Neck Tee from Tommy Hilfiger will make a smart choice for off-duty days.");
p58 = Product.create(name: 'LA Skull Tee', cost: 50, size: 'l', color: 'black', gender: 'men', brand:'Deus', info: "Deus Ex Machina's LA Skull Tee is made from soft cotton jersey in sleek black. We love the address branding on the back and the illustrated skull print on the chest.");
p59 = Product.create(name: 'Hessner Tee', cost: 50, size: 'l', color: 'greymulti', gender: 'men', brand:'Goliath', info: 'Add the Hessner Tee from St Goliath to your off-duty wardrobe, crafted from a soft and lightweight jersey with a tonal grey, black and white design. ');
p60 = Product.create(name: 'Buckley', cost: 60, size: 'm', color: 'blue', gender: 'men', brand:'Politix', info: 'Nothing says off-duty swagger like the Buckley dress shirt from Politix. With its fine geo print adding extra charm, this shirt features roll up sleeve tabs for an easy conversion to shorter sleeves.');

p61 = Product.create(name: 'Clip SS Shirt', cost: 70, size: 'l', color: 'black', gender: 'men', brand:'Goliath', info: "The St Goliath Clip SS Shirt is tough and reliable button-down - a staple in every guy's wardrobe. The washed-out black hue gives the illusion of denim, with white pattern detail giving the shirt a chilled vibe.");
p62 = Product.create(name: 'Buster Shirt', cost: 170, size: 'l', color: 'white', gender: 'men', brand:'Boss', info: "BOSS Green's Buster Shirt is a staple in every man's wardrobe. Cut from textured cotton, this collared white shirt can be worn to the office or dressed down with chinos and loafers for elevated weekend wear.");
p63 = Product.create(name: 'LS Classic Oxford Shirt', cost: 100, size: 'l', color: 'blue', gender: 'men', brand:'Ben Sherman', info: 'With its slim cut and blue hue, the LS Classic Shirt from Ben Sherman will be on constant rotation. Wear yours with slim-fit pants and loafers.');
p64 = Product.create(name: 'Gavin Shirt', cost: 60, size: 'l', color: 'black', gender: 'men', brand:'Jack & Jones', info: "Button-down shirts are never out of place in a man's wardrobe, so build up your collection with the Jack & Jones Gavin LS Shirt.");
p65 = Product.create(name: 'Moonah LS Cotton Poplin Shirt', cost: 50, size: 'l', color: 'white', gender: 'men', brand:'Staple Superior', info: 'The crisp Moonah Poplin Shirt from Staple Superior is cut from soft cotton shirting and has a striped placket lining for a hint of colour.');



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
