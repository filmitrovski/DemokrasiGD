extends Node2D

func _input(event):
	if(event.is_action_pressed("game_quit")):
		get_tree().quit()
