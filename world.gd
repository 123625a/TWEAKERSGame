extends Node3D








func _on_area_3d_body_entered(body): # als je colide met de colisionshape ga je naar de volgende scene
	get_tree().reload_current_scene() # restart


func _on_area_3d_2_body_entered(body): # als je colide met de colisionshape ga je naar de volgende scene
	get_tree().change_scene_to_file("res://level_2.tscn") # volgende scene
