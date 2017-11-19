extends Node2D

var pre_power = preload("res://scenes/power.tscn")
var interval = 10

func _ready():
	set_process(true)
	pass

func _process(delta):
	if interval > 0:
		interval -= delta
	else:
		interval = 10
		var power = pre_power.instance()
		power.set_pos(Vector2(rand_range(30, 610), -40))
		get_owner().add_child(power)
	pass