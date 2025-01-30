extends Control


func _on_button_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://menu.tscn") #de scene veranderen naar de volgende scene.

func _ready():#dit gaat in vanaf de scene start
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE) #de muis wordt zichtbaar
