extends Camera2D

var step = 64
var vwidth = 640
var vheight = 360
var limit = 30
	
func _input(event):
	if(get_local_mouse_position().x > vwidth - limit):
		position.x += step
	elif(get_local_mouse_position().y > vheight - limit):
		position.y += step
	elif(get_local_mouse_position().x < limit):
		position.x -= step
	elif(get_local_mouse_position().y < limit):
		position.y -= step
