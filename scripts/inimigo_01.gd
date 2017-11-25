extends Area2D

var pre_tiro = preload("res://scenes/inimigo_tiro.tscn")

func _ready():
	get_node("sprite").set_texture(recursos.random_init_tex())
	pass


func _on_tiro_timer_timeout():
	var tiro = pre_tiro.instance()
	tiro.set_global_pos(get_node("tiro_pos").get_global_pos())
	game.getCamera().add_child(tiro)
	pass 
