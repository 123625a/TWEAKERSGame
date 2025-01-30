extends Node3D

#<--- variablen -->
@onready var secret = $Node3D
@onready var munt = $Munt
@onready var muntvinden = $Muntvinden
@onready var trofee = $Trofee
@onready var volgende = $"Volgende level"

#	<--- Functies --->
func _on_area_3d_body_entered(body):#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://level_3.tscn") #de scene veranderen.


func _on_coin_body_entered(body): #als de speler de munt aanraakt/binnenkomt
	munt.hide() # de munt is onzichtbaar
	muntvinden.hide() # de tekst verdwijnt
	secret.show() # geheime level wordt getoond
	volgende.show() # de area om naar het volgende level te gaan kan je nu zien

func _ready():
	volgende.hide() # vanaf de start is deze onzichtbaar.


	
	


func _on_volgend_level_body_entered(body): #de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://Arena.tscn") #switch de scene
