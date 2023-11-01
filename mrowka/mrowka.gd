extends AnimatedSprite
var kolor=0
var licznik=0
var ide=0
var szary=1
var pacze=1
var zmien=1
signal nowy_punkt
signal koniec
var kierunek = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed=0
var velocity=Vector2(0,0)
# Called when the node enters the scene tree for the first time.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(szary):
		position+=velocity*speed*delta

var gdzie=Vector2()

func _on_Timer_timeout():
	$"..".wspolrzedne.x=position.x
	get_parent().wspolrzedne.y=position.y
	gdzie=position/64
	gdzie.x=floor(gdzie.x)
	gdzie.y=floor(gdzie.y)
	kolor=get_parent().get_cellv(gdzie)
	ide=1
	#print_debug(kolor)
	#print_debug(position.x)
	#print_debug(position.y)
	#print_debug(gdzie)
	if kolor == 0:
		kierunek=(kierunek+270)%360
		velocity=velocity.rotated(3*PI/2)
		#print_debug("bialy")
		get_parent().set_cellv(gdzie,1)
	if kolor==1:
		kierunek=(kierunek+90)%360
		velocity=velocity.rotated(PI/2)
		#print_debug("czarny")
		get_parent().set_cellv(gdzie,0)
	if kolor==2:
		velocity=0
		speed=0
		szary=0
		emit_signal("koniec")
		$"../Timer".stop()
		#print("koniec")
		#print(licznik)
	if kierunek==0:
		animation="gora"
	elif kierunek==90:
		animation="prawo"
	elif kierunek==180:
		animation="dol"
	else:
		animation="lewo"
	emit_signal("nowy_punkt")
	licznik+=1
	


func _on_mapa_start():
	speed=128*zmien
	print(zmien)
	velocity=Vector2(0,-1)

func _on_klucz_predkosc():
	zmien=$"../klucz".przyszpiesz
	print(zmien)
	
