extends Area2D

var vel = 200

func _ready():
	add_to_group(game.GRUPO_POWER)
	set_process(true)
	
func _process(delta):
	set_pos(get_pos() + Vector2(0, 1) * vel * delta)

func _on_power_area_enter( area ):
	if area.is_in_group(game.GRUPO_NAVE):
		area.set_tiro_obj(0)
		queue_free()
