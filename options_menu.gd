extends Control



func _on_back_pressed():# terug gaan naar vorige scene
	get_tree().quit() #scene wisselen




func _on_home_pressed(): #Terug gaan naar het hoofd menu.
	get_tree().change_scene_to_file("res://menu.tscn")  #scene wisselen.
