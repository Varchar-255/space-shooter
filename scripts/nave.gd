extends Node2D

var vel = 200

func _ready():
	set_process(true)
	pass

func _process(delta):
	var d = 0
	var e = 0
	if Input.is_action_pressed("direita"):
		d = 1 
	if Input.is_action_pressed("esquerda"):
		e = -1
	
	if get_pos().x > 640 - 50:
		d = 0
	if get_pos().x < 50:
		e = 0
	
	set_pos(get_pos() + Vector2(vel, 0) * delta * (d + e))
	pass
