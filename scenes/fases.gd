extends CanvasLayer

func _ready():
	pass
	
func _on_TextureButton_pressed():
	get_tree().change_scene("res://scenes/main.tscn")
	pass 

func _on_Button_pressed():
	get_tree().change_scene("res://scenes/start.tscn")
	pass 
