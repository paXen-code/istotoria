extends RichTextLabel

var dialog = ['', '']
#, "Что со мной?", "Всё же только наладилось", "Ну и как мне выбираться от сюда", "Хотя сначала мине бы научится ходить в таком положении", "АААА почему всё двухмерное и пиксельное", "Ладно, ладно, нужно успоится и попытаться выбраться отсюда", "Попробую отыскать здесь какую-нибудь цивилизацию, если она тут есть"
var page = 0
var x = -1
var skip
var may_dialog = false
var may_chat_go = 0
var k = 1
var i = 1
var v = 0
var delete = false

#func _ready():
#	append_text(dialog[page])
#	set_visible_characters(0)
	#var tscn = get_parent().get_parent().get_parent().get_parent()

func chat_go(l):
	while v == 0:
		if may_chat_go == 1:
			may_chat_go = 0
			get_parent().get_parent().get_child(3).get_child(l-1).hide()
			get_parent().get_parent().get_child(3).get_child(l).show()
			l += 1
			v += 1
		else:
			continue

func print1(dia):
	dialog = dia
	append_text(dialog[page])
#	chat_go(1)
#	k += 1
#	chat_go(2)
#	k += 1
#	chat_go(3)
#	k += 1
	#if k < 3:
	$AnimationPlayer.play("chat")
	#	k = 4
	'''
	if k > 3:
		get_parent().get_parent().get_child(3).get_child(3).hide()
		get_parent().show()
		append_text(dialog[page])
		if Input.is_action_just_pressed("skip") or skip == true:
			skip = false
			if page < dialog.size()-1:
				page += 1
				x += 1
				append_text(dialog[page])
				set_visible_characters(0)
			else:
				append_text("")
				k = 1
				$AnimationPlayer.play("delete")
	if delete == true:
		delete = false
		get_parent().hide()'''

func _physics_process(_delta):
	while i == 1:
		i += 1
		get_parent().get_parent().get_child(3).get_child(0).hide()
		get_parent().get_parent().get_child(3).get_child(1).hide()
		get_parent().get_parent().get_child(3).get_child(2).hide()
		get_parent().get_parent().get_child(3).get_child(3).hide()
		get_parent().show()
		$AnimationPlayer.play('chat')
	if Input.is_action_just_pressed("skip") or skip == true:
		skip = false
		#if get_visible_characters() > get_total_character_count():
		if page < dialog.size()-1:
			page += 1
			print(dialog[page])
			x += 1
			set_visible_characters(0)
			self.set_text(dialog[page])
			#append_text(dialog[page])
		else:
			page = 0
			self.set_text('')
			$AnimationPlayer.play("delete")
			k = 1
	if delete == true:
		delete = false
		#get_parent().hide()

func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)


func _on_TouchScreenButton_pressed():
	skip = true


func _on_Timer2_timeout():
	may_chat_go = 1


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "delete":
		delete = true
