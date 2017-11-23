extends Node

var paths = []
const path_dir = "res://paths/"

func _ready():
	carrega_path()

func random_path():
	return paths[randi() % paths.size()]

func carrega_path():
	var dir = Directory.new()
	dir.change_dir(path_dir)
	dir.list_dir_begin()
	
	var path_file = dir.get_next()
	
	while path_file != "":
		var path = load(path_dir + path_file)
		if path && path extends Curve2D:
			paths.append(path)
		path_file = dir.get_next()