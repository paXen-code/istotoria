extends Node2D
var pause = false
var cancel = false

func _physics_process(_delta):
	if Input.is_action_just_pressed('ui_cancel') and pause == false:
		get_tree().paused = true
		pause = true
		$chel_geroi_in/pausa.show()
	elif (Input.is_action_just_pressed('ui_cancel') and pause) or cancel:
		cancel = false
		get_tree().paused = false
		pause = false
		$chel_geroi_in/pausa.hide()

func _on_exit_pressed():
	get_tree().quit()


func _on_return_pressed():
	cancel = true
