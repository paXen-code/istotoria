extends CharacterBody2D
var zona_izby = false
var zona_time = false
var pause = false

func _physics_process(_delta):
	if Input.is_action_pressed('ui_left'):
		velocity.x = -500
	if Input.is_action_pressed('ui_right'):
		velocity.x = 500
	if Input.is_action_pressed('ui_up'):
		velocity.y = -500
	if Input.is_action_pressed('ui_down'):
		velocity.y = 500
	if not Input.is_action_pressed('ui_down') and not Input.is_action_pressed('ui_up') and not Input.is_action_pressed('ui_right') and not Input.is_action_pressed('ui_left'):
		velocity = Vector2(0, 0)
	move_and_slide()
	
	if Input.is_action_just_pressed('ui_cancel') and pause == false:
		get_tree().paused = true
		pause = true
		$pausa.show()
		$CanvasLayer.hide()
	elif Input.is_action_just_pressed('ui_cancel') and pause:
		get_tree().paused = false
		pause = false
		$pausa.hide()
		$CanvasLayer.show()

func _input(event):
	if event is InputEventKey:
		if event.keycode == 69:
			if zona_izby:
				zona_izby = false
				get_parent().get_parent().get_tree().change_scene_to_file("res://scene/izba.tscn")
			elif zona_time:
				zona_time = false
				get_parent().get_parent().get_tree().change_scene_to_file("res://scene/play.tscn")

func _on_area_2d_body_entered(_body):
	zona_izby = true

func _on_area_2d_body_exited(_body):
	zona_izby = false

func _on_exit_pressed():
	get_parent().get_tree().quit()

func _on_return_pressed():
	get_parent().get_tree().paused = false
	pause = false
	$pausa.hide()

func _on_time_machine_1_body_entered(_body):
	zona_time = true

func _on_time_machine_1_body_exited(_body):
	zona_time = false

