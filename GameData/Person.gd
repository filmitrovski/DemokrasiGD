extends Node2D

class_name Person

var personName : String
var memes : Dictionary # memekey: intensity
var dissent : int

func _init(_personName:String, _memes:Dictionary, _spawnAt:Vector2):
	personName = _personName
	memes = _memes
	position = _spawnAt
	
# Called when the node enters the scene tree for the first time.
func _ready():
	print(personName + " was born")
	print("They believe in...")
	print(memes)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
