extends Area2D

class_name Person

var personName : String
var memes : Dictionary # memekey: intensity
var dissent : int

var selected = false

#signal selection_toggled(selection)

func deliver(_personName:String, _memes:Dictionary, _spawnAt:Vector2):
	personName = _personName
	memes = _memes
	position = _spawnAt
	
# Called when the node enters the scene tree for the first time.
func _ready():	
	$PersonNameLabel.text = personName

func _input_event(_viewport, event, _shape_idx):
	if(event.is_action_pressed("mouse_click")):
		print(personName)


func _on_Person_mouse_entered():
	$PersonNameLabel.visible = true


func _on_Person_mouse_exited():
	$PersonNameLabel.visible = false
