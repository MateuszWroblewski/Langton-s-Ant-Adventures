extends Node2D

var przekieruj=["res://tutorial.tscn", "res://ustawienia.tscn", "res://mapa2.tscn", "res://mapa3.tscn", "res://mapa4.tscn", "res://mapa5.tscn"]
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	OS.set_native_icon("icon.ico")
	$AudioStreamPlayer2D.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_NewGame_gui_input(event):
	if event is InputEventMouseButton:
		get_tree().change_scene(przekieruj[0])


func _on_LoadGame_gui_input(event):
	if event is InputEventMouseButton:
		get_tree().change_scene("res://zaladuj.tscn")


func _on_Settings_gui_input(event):
	if event is InputEventMouseButton:
		get_tree().change_scene("res://ustawienia.tscn")
