extends Node2D
var dialog = []
signal laba_chat
var i = 0

func _on_npc_body_entered(body):
	dialog = ['ОЙ', 'Ты кто такой, путник?', 'Да что за одёжа на тебе', 'Посмотри на мою рубаху да лапти, мы тут все так одеваемся', 'Ладно, наверное тебя бес попутал', 'Смилюсь над тобой, не буду барину рассказывать об этой встрече', 'Но тогда ты мне поможешь вскопать 100000 гектар земли', 'А ну иди в мою избу, она вооон там, иди по тропинке вверх', 'Мою точно узнаешь', 'А это, я сейчас приду к тебе, дам тебе рубаху свою']
	$chel_geroi_in/CanvasLayer/Polygon2D/RichTextLabel.print1(dialog)