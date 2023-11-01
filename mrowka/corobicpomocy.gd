extends MenuButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

var ile=0
func _input(event):
	if event is InputEventMouseButton:
		ile+=1
		if ile%2:
			#hide()
			$tomaszrobic.visible=true
			$ok.visible=true
			#print("ugh")


#func _on_tomaszrobic_gui_input(event):
#	if event is InputEventMouseButton:
#		$tomaszrobic.hide()


func _on_ok_gui_input(event):
	if event is InputEventMouseButton:
		$tomaszrobic.visible=false
		$ok.visible=false
		
