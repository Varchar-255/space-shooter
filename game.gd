extends Node

const GRUPO_INIMIGO = "inimigo"
const GRUPO_NAVE = "nave"
const GRUPO_POWER = "power"

func _ready():
	pass

func getCamera():
	return get_tree().get_root().get_node("main").get_node("camera")
