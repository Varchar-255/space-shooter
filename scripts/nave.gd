extends Area2D

var vel = 300
var tiro
var tiro_simples = preload("res://scripts/classes/armas/tiro_simples.gd")

func _ready():
	add_to_group(game.GRUPO_NAVE)
	set_process(true)
	tiro = tiro_simples.new(self, 1)
	pass

func _process(delta):
	var d = 0
	var e = 0
	get_node("fogoDireito").set_param(Particles2D.PARAM_DIRECTION, 0)
	if Input.is_action_pressed("direita"):
		d = 1 
		get_node("fogoDireito").set_param(Particles2D.PARAM_DIRECTION, 310)
	if Input.is_action_pressed("esquerda"):
		get_node("fogoDireito").set_param(Particles2D.PARAM_DIRECTION, -310)
		e = -1
	
	if get_pos().x > 640 - 50:
		d = 0
	if get_pos().x < 50:
		e = 0
	
	set_pos(get_pos() + Vector2(vel, 0) * delta * (d + e))
	
	if Input.is_action_pressed("tiro"):
		tiro.disparo()
		pass
		
	tiro.atualiza(delta)
	pass
	
func set_tiro_obj(type):
	tiro = tiro_simples.new(self, type)
