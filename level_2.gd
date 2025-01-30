extends Node3D




func _on_area_3d_body_entered(body):#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://level_3.tscn")#scene wisselen


func _on_de_de_body_entered(body):#de 'fysieke' knop verbinden met script.
	get_tree().reload_current_scene()#scene wisselen
