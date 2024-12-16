extends CharacterBody2D
var zona = false

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

func _input(event):
	if event is InputEventKey:
		if event.keycode == 69:
			if zona:
				zona = false
				get_tree().change_scene_to_file("res://scene/izba_1.tscn")

func _on_area_2d_body_entered(_body):
	zona = true

func _on_area_2d_body_exited(_body):
	zona = false
