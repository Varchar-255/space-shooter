var pre_tiro = preload("res://scenes/tiro.tscn")
var intervalo = .1
var ultimo_disparo = 0
var root
var tipo_tiro = 1

func _init(root, tipo):
	self.root = root
	self.tipo_tiro = tipo
	pass
	
func disparo():
	if ultimo_disparo <= 0:
		tiro_powers()
		ultimo_disparo = intervalo
	pass

func tiro_powers():
	if tipo_tiro == 0:
		tiro_duplo()
	else:
		tiro_simples()
	pass

func tiro_duplo():
	cria_tiro(root.get_node("posCanhaoD"))
	cria_tiro(root.get_node("posCanhaoE"))
	pass

func tiro_simples():
	cria_tiro(root.get_node("posCanhaoC"))
	pass

func atualiza(delta):
	if ultimo_disparo > 0:
		ultimo_disparo -= delta
	pass
	
func cria_tiro(node):
	var tiro = pre_tiro.instance()
	tiro.set_global_pos(node.get_global_pos())
	root.get_owner().add_child(tiro)
	pass
	
func tipo_tiro(tipo):
	self.tipo_tiro = tipo
	pass
