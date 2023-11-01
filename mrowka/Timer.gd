extends Timer

var zmienna_debug=0
# Declare member variables here. Examples:
var a=1
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	zmienna_debug=1067


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_mrowka_nowy_punkt():
	if a:
		start()

func _on_mrowka_koniec():
	a=0
	stop()


func _on_mapa_start():
	start()
