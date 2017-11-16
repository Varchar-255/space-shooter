extends Node2D

var vel = 250
var rot = 0

func _ready():
	randomize()
	set_process(true)
	rot = rand_range(-2, 2)
	pass
	
func _process(delta):
	set_pos(get_pos() + Vector2(0, 1) * vel * delta)
	rotate(rot * delta)
	pass
