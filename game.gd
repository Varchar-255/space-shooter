extends Node

const GRUPO_INIMIGO = "inimigo"
const GRUPO_NAVE = "nave"
const GRUPO_POWER = "power"

var score = 0 setget setScore
var life = 3 setget setLife

signal score_changed
signal life_changed

func _ready():
	pass

func getCamera():
	return get_tree().get_root().get_node("main").get_node("camera")

func setScore(valor):
	score = valor
	emit_signal("score_changed")
	
func setLife(valor):
	life = valor
	emit_signal("life_changed")
	