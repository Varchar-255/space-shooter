extends Node

var paths = []
var ini_text = []
const path_dir = "res://paths/"
const ini_text_dir = "res://sprites/Enemies/"

func _ready():
	carrega_path()
	carrega_texture_inimigo()

func random_path():
	return paths[randi() % paths.size()]
	
func random_init_tex():
	return ini_text[randi() % ini_text.size()]

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

func carrega_texture_inimigo():
	var dir = Directory.new()
	dir.change_dir(ini_text_dir)
	dir.list_dir_begin()
	
	var path_file = dir.get_next()
	
	while path_file != "":
		var path = load(ini_text_dir + path_file)
		if path && path extends Texture:
			ini_text.append(path)
		path_file = dir.get_next()
