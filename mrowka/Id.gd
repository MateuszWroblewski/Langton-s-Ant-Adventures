extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var  ile_pauz=0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_select") and get_parent().tylko_raz==0:
		if ile_pauz%2==0:
			get_tree().paused=true
			#$Timer.stop()
			#$mrowka.stop()
			#$mrowka.speed=0
			ile_pauz+=1
		else:
			#$Timer.start()
			#$mrowka.start()
			#$mrowka.speed=128
			get_tree().paused=false
			ile_pauz+=1
