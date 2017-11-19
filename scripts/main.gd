extends CanvasLayer

func _ready():
	get_node("anim").play("start_pos")
	pass

func _on_Button_pressed():
	get_tree().change_scene("res://scenes/fases.tscn")
	pass 