extends Node

var names = ["Gonad","Terre","Flink","Masmod","Ferri","Blend","Gimel",
	"Perro","Fonk","Terrard","Jimni","Tedward",'Cobble','Trez','Nilly','Terrard',
	'Fammey','Zord','Henkle','Robar','Dinny','Herk','Derdy','Jank','Rikird',
	'Perd','Millarg','Sleeve','Dichael','Grent','Borrard','Gelly','Sink','Fomd',
	'Gemp','Winny','Sigerd','Zein','Prolop','Forkar','Qaid','Sassa','Fig','Cherp',
	'Darrin','Siebed','Yank','Jommer','Fark','Denker','Yu','Estor','Eran','Gopper',
	'Didder','Fork','Grent'
]

# Called when the node enters the scene tree for the first time.
func _ready():
	var people = get_parent().get_node("People")
	var memeData = Memes.new()
	
	for n in 9:
		var person = Person.new()
		person.personName = generateName()
		# Change this to allow for more memes
		var memeKeys = memeData.memes.keys()
		person.memes[memeKeys[randi() % memeData.memes.size()]] = 1
		
		people.add_child(person)
		
func generateName():
	return names[randi() % names.size()] + " " + names[randi() % names.size()]

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
