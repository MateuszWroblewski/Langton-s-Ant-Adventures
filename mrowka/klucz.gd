extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var przyszpiesz=1
signal predkosc
# Called when the node enters the scene tree for the first time.
func _ready():
	emit_signal("predkosc")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_HSlider_value_changed(value):
	przyszpiesz=value
	emit_signal("predkosc")
	get_tree().get_script()
	print(value)
