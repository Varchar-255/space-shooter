extends Area2D


func _ready():
	get_node("sprite").set_texture(recursos.random_init_tex())
	pass
