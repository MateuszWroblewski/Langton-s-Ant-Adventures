extends TileMap
#var screen_size
export var wspolrzedne = Vector2(3,4)
export var ident=0
signal start
var dziala=1
var slowo=""
var liczba=0
var dlugosc=0
var ile_zmian=1
export var poziom=1
var array = ["res://menu.tscn","res://tutorial.tscn","res://mapa2.tscn", "res://mapa3.tscn", "res://mapa4.tscn", "res://mapa5.tscn", "res://mapa6.tscn","res://mapa7.tscn", "res://mapa8.tscn", "res://mapa9.tscn", "res://mapa10.tscn","res://mapa11.tscn", "res://wygrana.tscn"]
export var Limit_Zmian=3
# Declare member variables here. Examples:
# var a = 2
signal zwyciestwo
signal porazka
var klucz=0
var pot=1
var pole=0
var pomoc=0
#var ile_pauz=0
var licz=0
var tylko_raz=1
func _ready():
	$Zwyciestwo.set_text("Congratulations!")
	$Porazka.set_text("Try again")
	slowo=$licze.get_text()
	dlugosc=slowo.length()
	#liczba=slowo[dlugosc-1]
	#liczba=int(liczba)
	#liczba-=1
	#liczba=String(liczba)
	slowo[dlugosc-1]=String(Limit_Zmian)
	$licze.set_text(slowo)
	#get_viewport_rect().size
	#$Label.show()
	#bitmaska klucza
	pot=1
	klucz=0
	for i in range(10,17):
		for j in range(1,8):
			pole=get_cell(i,j)
			klucz+=pot*pole
			pot*=2
	#print("licz wynosi:")
	#print(licz)
	#print(klucz)
	pot=1
	licz=0

# var b = "text"
func _process(delta):
	if Input.is_key_pressed(KEY_S) && tylko_raz:
		emit_signal("start")
		dziala=0
		tylko_raz=0
		Limit_Zmian=2
		ile_zmian=1
		slowo=$ins.get_text()
		slowo[0]='P'
		slowo[2]='p'
		slowo[3]='a'
		slowo[4]='u'
		slowo[5]='s'
		slowo[6]='e'
		$ins.set_text(slowo)
	if Input.is_key_pressed(KEY_R):
			get_tree().change_scene(array[poziom])
	if Input.is_key_pressed(KEY_M):
		get_tree().change_scene("res://menu.tscn")


var komorka=0
func _input(event):
	if event is InputEventMouseButton:
		ident+=1
		if ident%2 && dziala:
		
			wspolrzedne=event.position
			wspolrzedne.x=floor(wspolrzedne.x/64)
			wspolrzedne.y=floor(wspolrzedne.y/64)
			#print(wspolrzedne)
			komorka=get_cellv(wspolrzedne)
			if wspolrzedne.x<=7 and wspolrzedne.x>=1 and wspolrzedne.y>=1 and wspolrzedne.y<=7:
				if komorka==0:
					set_cellv(wspolrzedne,1)
					ile_zmian-=1
					slowo=$licze.get_text()
					dlugosc=slowo.length()
					liczba=slowo[dlugosc-1]
					liczba=int(liczba)
					liczba+=1
					liczba=String(liczba)
					slowo[dlugosc-1]=liczba
					$licze.set_text(slowo)
				if komorka==1 && ile_zmian<=Limit_Zmian:
					set_cellv(wspolrzedne,0)
					ile_zmian+=1
					slowo=$licze.get_text()
					dlugosc=slowo.length()
					liczba=slowo[dlugosc-1]
					liczba=int(liczba)
					liczba-=1
					liczba=String(liczba)
					slowo[dlugosc-1]=liczba
					$licze.set_text(slowo)


func _on_Timer_timeout():
	pot=1
	licz=0
	for i in range(1,8):
		for j in range(1,8):
			pole=get_cell(i,j)
			licz+=pot*pole
			pot*=2
	#print("licz wynosi:")
	#print(licz)




func _on_mrowka_koniec():
	if licz==klucz:
		emit_signal("zwyciestwo")
	else:
		emit_signal("porazka") 


func _on_mapa_zwyciestwo():
	poziom+=1
	$Zwyciestwo.show()
	$AudioStreamPlayer2D.stop()
	$AudioStreamPlayer2D2.play()
	$wygrana.start()
	#print("tak")


func _on_mapa_porazka():
	$Porazka.show()
	$wygrana.start()


func _on_wygrana_timeout():
	#print("nie")
	get_tree().change_scene(array[poziom])
	Limit_Zmian=2


