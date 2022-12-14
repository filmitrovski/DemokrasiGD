extends Node

var names = ["Gonad","Terre","Flink","Masmod","Ferri","Blend","Gimel",
	"Perro","Fonk","Terrard","Jimni","Tedward",'Cobble','Trez','Nilly','Terrard',
	'Fammey','Zord','Henkle','Robar','Dinny','Herk','Derdy','Jank','Rikird',
	'Perd','Millarg','Sleeve','Dichael','Grent','Borrard','Gelly','Sink','Fond',
	'Gemp','Winny','Sigerd','Zein','Prolop','Forkar','Qaid','Sassa','Fig','Cherp',
	'Darrin','Siebed','Yank','Jommer','Fark','Denker','Yu','Estor','Eran','Gopper',
	'Didder','Fork','Grent', 'Feeny'
]

var spawnPoints = [
	Vector2(536, 536),
	Vector2(536+8, 536+8),
	Vector2(536+16, 536+16),
	Vector2(536+16+8, 536+16+8),
	Vector2(536+32, 536+32),
	Vector2(536+32+8, 536+32+8),
	Vector2(536+32+16, 536+32+16),
	Vector2(536+32+16+8, 536+32+16+8),
	Vector2(536+64, 536+64),
	Vector2(536+64+8, 536+64+8),
	Vector2(536+64+16, 536+64+16),
	Vector2(536+64+16+8, 536+64+16+8),
	Vector2(536+64+32, 536+64+32),
	Vector2(536+64+32, 536+64+32),
]

var personScene = preload("res://GameData/Person.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	var people = get_parent().get_node("People")
	
	var memeData = Memes.new()
	var memeKeys = memeData.memes.keys()
	var memeSize = memeKeys.size()
	var personMemes:Dictionary
	
	for n in 3:
		personMemes = {}
		for i in 2:
			personMemes[memeKeys[randi() % memeSize]] = 1
		
		var person = personScene.instance()
		person.deliver(generateName(), personMemes, spawnPoints[randi() % spawnPoints.size()])
		people.add_child(person)
		
func generateName():
	return names[randi() % names.size()] + " " + names[randi() % names.size()]

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
