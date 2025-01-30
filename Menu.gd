extends Control




func _on_play_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://multi_solo.tscn")#scene wisselen



func _on_options_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://options_menu.tscn")#scene wisselen


func _on_quit_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().quit() #het programma stoppen
