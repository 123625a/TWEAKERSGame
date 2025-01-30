extends Node3D




func _on_area_3d_body_entered(body):# Als er contact wordt gemaakt met de collisionshape zal de speler respawnen.
	get_tree().change_scene_to_file("res://huis.tscn") #als er via de deur naar binnen wordt gegaan, zal de speler naar de huis scene gaan.


func _on_respawn_body_entered(body): # Als er contact wordt gemaakt met de collisionshape zal de speler respawnen.
	get_tree().reload_current_scene() #de scene herstarten.
