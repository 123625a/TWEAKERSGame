extends Control

# <---- Variabeleen --->
@onready var main_menu = $MarginContainer
@onready var address_entry = $MarginContainer/VBoxContainer/LineEdit

const PlayerScene = preload("res://player.tscn")
const PORT = 9999
var enet_peer = ENetMultiplayerPeer.new()


# <---- Functies --->
func _on_button_3_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://multi_solo.tscn")#scene wisselen


#func _on_host_pressed(): dit was voor multiplayer maar te weinig tijd voor:(
	#main_menu.hide()
	
	#enet_peer.create_server(PORT)
	#multiplayer.multiplayer_peer = enet_peer
	
	#add_player(multiplayer.get_unique_id())


func _on_join_pressed():
	pass # niet van toepassing vanwege de tijd.


#func add_player(peer_id):
#	var player = PlayerScene.instantiate()
#	player.name = str(peer_id)
#	add_child(player)
	


func _on_button_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://menu.tscn")#scene wisselen
