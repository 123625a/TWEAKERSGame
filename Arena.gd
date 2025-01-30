extends Node3D


func _on_area_3d_body_entered(body): #de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://end_screen.tscn") #als je in de area komt dan ga je naar het volgende level.


