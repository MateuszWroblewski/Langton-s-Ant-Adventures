extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#var slowo=""
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_zaladuj_bida():
	show()
	$"../kontynuuj".show()



func _on_kontynuuj_gui_input(event):
	if event is InputEventMouseButton:
		$"../kontynuuj".hide()
		hide()
		$"../wpisuje".set_text("")
