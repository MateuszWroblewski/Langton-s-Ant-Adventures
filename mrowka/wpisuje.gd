extends Label

signal sprawdz
var rozmiar=0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var moge=1
var txt=""
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if moge==1:
		if Input.is_key_pressed(KEY_0):
			txt=get_text()
			txt=txt+'0'
			set_text(txt)
			moge=0
			$czasownik.start()
		if Input.is_key_pressed(KEY_1):
			txt=get_text()
			txt=txt+'1'
			set_text(txt)
			moge=0
			$czasownik.start()
		if Input.is_key_pressed(KEY_2):
			txt=get_text()
			txt=txt+'2'
			set_text(txt)
			moge=0
			$czasownik.start()
		if Input.is_key_pressed(KEY_3):
			txt=get_text()
			txt=txt+'3'
			set_text(txt)
			moge=0
			$czasownik.start()
		if Input.is_key_pressed(KEY_4):
			txt=get_text()
			txt=txt+'4'
			set_text(txt)
			moge=0
			$czasownik.start()
		if Input.is_key_pressed(KEY_5):
			txt=get_text()
			txt=txt+'5'
			set_text(txt)
			moge=0
			$czasownik.start()
		if Input.is_key_pressed(KEY_6):
			txt=get_text()
			txt=txt+'6'
			set_text(txt)
			moge=0
			$czasownik.start()
		if Input.is_key_pressed(KEY_7):
			txt=get_text()
			txt=txt+'7'
			set_text(txt)
			moge=0
			$czasownik.start()
		if Input.is_key_pressed(KEY_8):
			txt=get_text()
			txt=txt+'8'
			set_text(txt)
			moge=0
			$czasownik.start()
		if Input.is_key_pressed(KEY_9):
			txt=get_text()
			txt=txt+'9'
			set_text(txt)
			moge=0
			$czasownik.start()
		if Input.is_key_pressed(KEY_BACKSPACE):
			txt=get_text()
			rozmiar=txt.length()
			txt[rozmiar-1]=""
			set_text(txt)
			moge=0
			$czasownik.start()
		if Input.is_key_pressed(KEY_ENTER):
			emit_signal("sprawdz")
		if Input.is_key_pressed(KEY_LEFT):
			get_tree().change_scene("res://menu.tscn")


func _on_czasownik_timeout():
	moge=1
