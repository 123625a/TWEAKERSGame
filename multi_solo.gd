extends Control




func _on_solo_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://Levels.tscn")#scene wisselen



func _on_multi_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://multiplayer.tscn")#scene wisselen


func _on_button_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://menu.tscn")#scene wisselen
