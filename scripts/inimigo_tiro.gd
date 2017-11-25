extends Area2D

const giro = 360
const vel = 200
const dir = Vector2(0, 1)

func _ready():
	add_to_group(game.GRUPO_TIRO_INIMIGO) 
	set_process(true)

func _process(delta):
	rotate(deg2rad(giro) * delta)
	translate(dir * vel * delta)

func destroy():
	queue_free()

	