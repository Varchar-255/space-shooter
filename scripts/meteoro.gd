extends Area2D

var vel = 100
var rot = 0
var vida = 4
var pontos = 10

func _ready():
	add_to_group(game.GRUPO_INIMIGO)
	randomize()
	set_process(true)
	rot = rand_range(-2, 2)
	pass
	
func _process(delta):
	set_pos(get_pos() + Vector2(0, 1) * vel * delta)
	#rotate(rot * delta)
	pass
	

func aplica_dano(valor):
	get_node("anim").play("hit")
	vida -= valor
	if vida <= 0:
		game.score += pontos
		set_process(false)
		remove_from_group(game.GRUPO_INIMIGO)
		get_node("anim").play("destroy")
		game.getCamera().shake()
	pass

