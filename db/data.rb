#encoding: UTF-8
require "rubygems"
require "sequel"

DB = Sequel.connect(ENV['DATABASE_URL'] || "postgres://localhost/lpdc")

DB.create_table? :gold_book do
  primary_key :id
  String :author
  Text :message
  DateTime :created_at
end

DB.drop_table :products
DB.drop_table :distributors

# create a products table
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

DB.create_table :distributors do
  primary_key :id
  String :name
  String :url
  Text :description
  Text :address
  DateTime :created_at
end

products = DB[:products]
distributors = DB[:distributors]

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
products.insert(
  'name' => "Amandes anisées",
  'price' => 5,
  'weight' => 200,
  'desc' => "Les pralines aux amandes délicatement enrobées de poudre d'anis apporteront de la fraîcheur à vos apéritifs",
  'paypal_key' => 'DPWVCHYA2NHGN',
  'header_id' => 'accordion-anise',
  'collapse_id' => 'collapseAnise',
  'img_path' => 'anise.jpg')
products.insert(
  'name' => "Pralines au sésame",
  'price' => 5,
  'weight' => 200,
  'desc' => "Pralines aux amandes roulées dans du sésame bio pour un double plaisir de goût et de texture",
  'paypal_key' => 'U25UXKFW27FDQ',
  'header_id' => 'accordion-sesame',
  'collapse_id' => 'collapseSesame',
  'img_path' => 'sesame.jpg')
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
  'desc' => "Ce mélange de trois graines nobles, noix de cajou, amandes, noisettes est un produit idéal de découverte."
  'paypal_key' => 'N8WMZ9X3DJVT2',
  'header_id' => 'accordion-macadamia',
  'collapse_id' => 'collapseMacadamia',
  'img_path' => 'noble.jpg')



# Distributors

distributors.insert(
  'name' => 'Saveurs d’Autrefois',
  'url' => 'http://annuaire.118712.fr/Herault-34/Lattes-34970/Saveurs-d-autrefois-(biomonde)-0467644155_1E0080F00007R30900T60590S',
  'description' => 'Épicerie bio',
  'address' => 'Lattes (34)')

distributors.insert(
  'name' => 'La Malle aux Délices',
  'url' => 'http://www.annuaire-inverse-france.com/0232347691/la-malle-aux-delices',
  'description' => 'Épicerie fine - cave à vin',
  'address' => 'Pacy-sur-Eure (27)')

distributors.insert(
  'name' => 'Hôtel La Peiriero',
  'url' => 'http://www.hotel-peiriero.com/',
  'description' => '',
  'address' => 'Fontvieille (13)')

distributors.insert(
  'name' => 'Ubiquitus',
  'url' => '',
  'description' => 'Conciergerie d’entreprise',
  'address' => 'Lyon (69)')
