extends Control




func _on_level_1_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://world.tscn") #scene wisselen



func _on_level_1_foto_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://world.tscn")#scene wisselen




func _on_level_2_foto_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://level_2.tscn")#scene wisselen


func _on_level_2_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://level_2.tscn")#scene wisselen


func _on_level_3_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://level_3.tscn")#scene wisselen


func _on_button_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://level_3.tscn")#scene wisselen


func _on_back_pressed():
	get_tree().change_scene_to_file("res://multi_solo.tscn")
