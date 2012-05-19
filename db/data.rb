#encoding: UTF-8
require "rubygems"
require "sequel"

DB = Sequel.connect(ENV['DATABASE_URL'] || "postgres://localhost/lpdc")

# create an products table
DB.create_table :products do
  primary_key :id
  String :name
  Float :price
  Text :desc
  Integer :weight
  String :header_id
  String :collapse_id
  String :paypal_key
  String :img_path
end

DB.create_table :gold_book do
  primary_key :id
  String :author
  Text :message
  DateTime :created_at
end

products = DB[:products]

products.insert(
  'name' => 'Chouchous à la cacahuète',
  'price' => 3,
  'weight' => 200,
  'desc' => "Retrouvez le goût des vacances avec le traditionnel chouchou de plage, revisité par mes soins. Une graine sélectionnée ainsi qu'une cuisson artisanale pour alimenter la nostalgie de l'enfance.",
  'paypal_key' => 'CAMXHZNE9LUS4',
  'header_id' => 'accordion-peanut',
  'collapse_id' => 'collapsePeanut',
  'img_path' => 'peanut.jpg')
products.insert(
  'name' => 'Chouchous cannelle',
  'price' => 3,
  'weight' => 200,
  'desc' => "Inspiration nordique pour cette cacahuète à la cannelle, à déguster sans modération.",
  'paypal_key' => '5RES3DC8AS678',
  'header_id' => 'accordion-cinamon',
  'collapse_id' => 'collapseCinamon',
  'img_path' => 'cinamon.jpg')
products.insert(
  'name' => 'Amandes',
  'price' => 5,
  'weight' => 200,
  'desc' => "Craquez pour la praline à l'amande !<br /> Une graine de qualité, enrobée d'une fine couche de caramel cristalisé.",
  'paypal_key' => '77LEGZ9XAMABA',
  'header_id' => 'accordion-almond',
  'collapse_id' => 'collapseAlmond',
  'img_path' => 'almond2.jpg')
products.insert(
  'name' => 'Noisettes',
  'price' => 5,
  'weight' => 200,
  'desc' => "Les amateurs de noisette ont enfin trouvé leur confiserie préférée avec ma praline à la noisette.",
  'paypal_key' => '5CVR3G5T9ZN7Q',
  'header_id' => 'accordion-hazelnut',
  'collapse_id' => 'collapseHazelnut',
  'img_path' => 'hazelnut.jpg')
products.insert(
  'name' => 'Noix de cajou',
  'price' => 5,
  'weight' => 150,
  'desc' => "La cajou est une noix très tendre, qui n'endommagera pas vos appareils dentaires.",
  'paypal_key' => 'YPDHCYV67ND8Y',
  'header_id' => 'accordion-cashew',
  'collapse_id' => 'collapseCashew',
  'img_path' => 'cashew.jpg')
products.insert(
  'name' => 'Mélange noble',
  'price' => 5,
  'weight' => 150,
  'desc' => "La noix de macadamia, très parfumée, entre dans la composition du mélange noble avec des amandes, des noisettes, des noix de cajou et de pécan.",
  'paypal_key' => 'N8WMZ9X3DJVT2',
  'header_id' => 'accordion-macadamia',
  'collapse_id' => 'collapseMacadamia',
  'img_path' => 'noble2.jpg')
products.insert(
  'name' => 'Mélange spécial Amacoto',
  'price' => 5,
  'weight' => 200,
  'desc' => "Découvrez <em>Amacoto</em> mon mélange original d'amandes, graines de courge et graines de tournesol, spécialement élaboré pour le plaisir de vos papilles.",
  'paypal_key' => 'L93N2J9TJWHTL',
  'header_id' => 'accordion-amacoto',
  'collapse_id' => 'collapseAmacoto',
  'img_path' => 'amacoto2.jpg')
products.insert(
  'name' => 'Pistaches, pignons, amandes',
  'price' => 5,
  'weight' => 150,
  'desc' => "Le pignon et la pistache, petites graines du midi, tendres et parfumées déclinées au caramel.",
  'paypal_key' => 'BPVU2KZ4FHN5W',
  'header_id' => 'accordion-pignon',
  'collapse_id' => 'collapsePignon',
  'img_path' => 'pignon.jpg')
products.insert(
  'name' => 'Amandes au cacao',
  'price' => 5,
  'weight' => 200,
  'desc' => "L'amertume du 100% cacao sur la douceur des pralines aux amandes, un contraste suave, à vous de tester.",
  'paypal_key' => 'RCVULLHXU77F6',
  'header_id' => 'accordion-cacao',
  'collapse_id' => 'collapseCacao',
  'img_path' => 'cacao.jpg')
products.insert(
  'name' => "Amandes au piment d'Espelette",
  'price' => 5,
  'weight' => 200,
  'desc' => "Une pointe d'Espelette pour enflammer les papilles. Un régal à déguster avec le café.",
  'paypal_key' => 'KSSGVSG55TEKY',
  'header_id' => 'accordion-pepper',
  'collapse_id' => 'collapsePepper',
  'img_path' => 'pepper.jpg')
