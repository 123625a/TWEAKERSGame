extends CharacterBody3D

# <--- Variabelen --->
@export var camera_sensitivity: float = 0.25
@onready var head: Node3D = $Head
@onready var panel = $Panel
@onready var SPEED = 10.0
const JUMP_VELOCITY = 7.5
const min_angle = -60
const max_angle = 70

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 9.18 #ProjectSettings.get_setting("physics/3d/default_gravity")


#<--- Functies --->

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func _unhandled_input(event):
	if event is InputEventMouseMotion:
		_handle_camera_rotation(event)

func _handle_camera_rotation(event):
	rotate_y(deg_to_rad(-event.relative.x * camera_sensitivity))
	head.rotate_x(deg_to_rad(-event.relative.y * camera_sensitivity))
	head.rotation.x = clamp(head.rotation.x, deg_to_rad(min_angle), deg_to_rad(max_angle))

func _physics_process(delta):
		# Zwaartekracht --->.
	if not is_on_floor():
		velocity.y -= gravity * delta
	
	if Input.is_action_just_pressed('escape'):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		panel.show() # options menu
	
	if Input.is_action_just_released('shift'):
		SPEED = SPEED + 0.5 #sprinten
		
	if Input.is_action_just_pressed('restart'): # herstarten
		get_tree().reload_current_scene()
		
	
		# Springen --->
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

		# Je input een richting geven w = naar voren etc.
	var input_dir = Input.get_vector("left", "right", "forward", "back")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
	
	
	
	
	


func _on_back_pressed():#de 'fysieke' knop verbinden met script.
	panel.hide() #options menu verbergen
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED) # muis verbergen


func _on_main_menu_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().change_scene_to_file("res://menu.tscn")  #scene wisselen


func _on_quit_pressed():#de 'fysieke' knop verbinden met script.
	get_tree().quit() #scene wisselen
