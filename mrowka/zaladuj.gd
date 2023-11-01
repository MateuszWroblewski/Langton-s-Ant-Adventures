extends Node2D

var klucz=""
var czy=0
signal bida
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var slownik={"68376043":"res://mapa2.tscn", "03519623":"res://mapa3.tscn", "40631758":"res://mapa4.tscn", "93615723":"res://mapa5.tscn", "49104825":"res://mapa6.tscn","73018492":"res://mapa7.tscn","61795058":"res://mapa8.tscn","27936401":"res://mapa9.tscn","37408493":"res://mapa10.tscn","87321849":"res://mapa11.tscn"}
# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioStreamPlayer2D.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_wpisuje_sprawdz():
	klucz=$wpisuje.txt
	czy=slownik.has(klucz)
	if czy:
		get_tree().change_scene(slownik[klucz])
	else:
		emit_signal("bida")
