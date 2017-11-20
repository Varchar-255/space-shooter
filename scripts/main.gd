extends CanvasLayer

func _ready():
	get_node("anim").play("start_pos")
	pass

func _on_Button_pressed():
	get_tree().change_scene("res://scenes/fases.tscn")
	pass 

func _on_pause_button_pressed():
	get_tree().set_pause(!get_tree().is_paused())
	pass # replace with function body
