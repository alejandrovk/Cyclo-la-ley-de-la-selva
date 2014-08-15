# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# lion = Animal.create({name: "Lion", life_time: 30, animal_type: "Carnivoro"}) 
# cucaracha = Animal.create({name: "Cucaracha", life_time: 100, animal_type: "Carroñero"}) 
# vaca = Animal.create({name: "Vaca", life_time: 30, animal_type: "Herviboro"}) 
# gato = Animal.create({name: "Gato", life_time: 30, animal_type: "Carnivoro"})

# level1 = Level.create({name: "level1", difficult: 1})
# level1.animals << lion
# level1.animals << cucaracha
# level1.animals << vaca
# level1.animals << gato

# savanna = Ecosystem.create({name: "savanna"})
# savanna.levels << level1



# Savanna ecosystem



#Producer:
grass = Animal.create({name: 'grass', life_time: 100, animal_type: 'productor', url:'http://www.rankopedia.com/CandidatePix/17031.gif'})

#herbivoro1
grasshoper = Animal.create({name: 'grasshoper', life_time: 11, animal_type: 'herbivoro1', url:'http://fc04.deviantart.net/fs71/i/2012/097/5/a/grasshopper_pokemon_by_fakemonfactory-d4vbq0m.png'})
hares = Animal.create({name:'hares', life_time: 100, animal_type:'herbivoro1', url:'http://3.bp.blogspot.com/-4MKbTnJlMxg/TmEC4SISTlI/AAAAAAAACT4/L0_G8hBeou0/s400/liebre.jpg'})

#herbivoro2
impala = Animal.create({name:'impala', life_time: 100, animal_type:'herbivoro2', url:'http://www.fernandoaldea.com/wp-content/uploads/impala.gif'})

#herbivoro3
elephant = Animal.create({name:'elephant', life_time: 100, animal_type:'herbivoro3', url:'http://cdn.bulbagarden.net/upload/thumb/d/d3/231Phanpy.png/250px-231Phanpy.png'})

#carnivoro1
mongoose = Animal.create({name:'mongoose', life_time: 100, animal_type:'carnivoro1', url:'http://fc04.deviantart.net/fs70/f/2011/117/a/e/sketch_com___zangoose_by_racieb-d3f2gli.png'})

#carnivoro2
cheetah = Animal.create({name:'cheetah', life_time: 100, animal_type:'carnivoro2', url:'http://cdn.bulbagarden.net/upload/thumb/b/bb/135Jolteon.png/250px-135Jolteon.png'})

#carnivoro3
lion = Animal.create({name: 'lion', life_time: 100, animal_type: 'carnivoro3', url:'http://pixelorama.files.wordpress.com/2013/09/xy-sugimori2.jpg'})

#carroñero
vulture = Animal.create({name: 'vulture', life_time: 100, animal_type: 'carroñero', url:'http://cdn.bulbagarden.net/upload/thumb/0/00/630Mandibuzz.png/250px-630Mandibuzz.png'})

#descomponedor
hongus = Animal.create({name: 'hongus', life_time: 100, animal_type: 'descomponedor', url:'http://img.pokemondb.net/artwork/amoonguss.jpg'})

level1 = Level.create({name: "level1", difficult: 1})
	level1.animals << grass
	level1.animals << grasshoper
	level1.animals << lion
	level1.animals << hongus

level2 = Level.create({name: 'level2', difficult: 1})
	level2.animals << grass
	level2.animals << hares
	level2.animals << lion
	level2.animals << vulture
	level2.animals << hongus

level3 = Level.create({name: 'level3', difficult: 2})
	level3.animals << grass
	level3.animals << hares
	level3.animals << mongoose
	level3.animals << cheetah
	level3.animals << lion
	level3.animals << vulture
	level3.animals << hongus

savanna = Ecosystem.create({name: "savanna"})
	savanna.levels << level1
	savanna.levels << level2
	savanna.levels << level3

#ocean ecosystem

#Producer
filoplacton = Animal.create({name: 'filoplacton', life_time: 100, animal_type: 'productor', url:'http://www.oceanoasis.org/teachersguide/images/a10-phytoplankton.jpg'})
seaweed = Animal.create({name: 'seaweed', life_time: 100, animal_type: 'productor', url:'http://img1.wikia.nocookie.net/__cb20080909115011/es.pokemon/images/0/03/Tangela.png'})

#herbivoro1
carp = Animal.create({name: 'carp', life_time: 100, animal_type: 'herbivoro1', url:'http://img4.wikia.nocookie.net/__cb20120906024655/es.pokemon/images/b/b4/Magikarp_(anime_AG).png'})

#herbivoro2
greenSeaTurtle = Animal.create({name: 'greenSeaTurtle', life_time: 100, animal_type: 'herbivoro2', url:'https://lh5.googleusercontent.com/-s4hOBQ5wN2c/TYEOQUmGwrI/AAAAAAAAAEw/kE-U2o6zHWI/s1600/564Purotoga.png'})

#herbivoro3
manatee = Animal.create({name: 'manatee', life_time: 100, animal_type: 'herbivoro3', url:'http://38.media.tumblr.com/tumblr_m5rfrfP7Rd1rw7u8ro2_1280.png'})

#carnivoro1
mantRay = Animal.create({name: 'mantRay', life_time: 100, animal_type: 'carnivoro1', url:'http://cdn.bulbagarden.net/upload/thumb/c/c5/226Mantine.png/600px-226Mantine.png'})

#carnivoro2
swordfish = Animal.create({name: 'swordfish', life_time: 100, animal_type: 'carnivoro2', url:'http://images4.wikia.nocookie.net/__cb20100222175721/digimon/de/images/a/a4/Submarimon.jpg'})

#carnivoro3
orca = Animal.create({name: 'orca', life_time: 100, animal_type: 'carnivoro3', url:'http://z3.ifrm.com/199/88/0/f435095/PokemonColosseum-Kyogre.jpg'})

#carroñero
whiscash = Animal.create({name: 'whiscash', life_time: 100, animal_type: 'carroñero', url:'http://img2.wikia.nocookie.net/__cb20080910102640/es.pokemon/images/9/9a/Whiscash.png'})

#descomponedor
seaStar = Animal.create({name: 'seaStar', life_time: 100, animal_type: 'descomponedor', url:'http://th05.deviantart.net/fs70/PRE/i/2013/244/2/f/free_staryu_pokemon_vector_by_emerald_stock-d6koi3u.png'})

level4 = Level.create({name: "level4", difficult: 3})
	level4.animals << seaweed
	level4.animals << carp
	level4.animals << mantRay
	level4.animals << seaStar

level5 = Level

ocean = Ecosystem.create({name: "ocean"})
	ocean.levels << level4

