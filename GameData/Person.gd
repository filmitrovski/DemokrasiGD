extends Node2D

class_name Person

export(String) var personName
export(Dictionary) var memes = {} # memekey: intensity
export(int) var dissent = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	print(personName + " was born")
	print("They believe in...")
	print(memes)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
