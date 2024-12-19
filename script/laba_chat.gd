extends Node2D
var dialog = []
signal laba_chat
var i = 0

func _ready():
	dialog = ['Наконец я сделала машину времени', 'Хм хм куда бы отправиться в первую очередь?', 'Точно, я же с детства планировала побывать в средневековой руси', 'Тааак, вроде по датам всё настроено, осталось лишь подойти и нажать на кнопку \"E\"']
	#if i < dialog.size():
		#emit_signal("laba_chat", dialog[i])
		#print(dialog[i], '4')
	$chel_geroi_in/CanvasLayer/Polygon2D/RichTextLabel.print1(dialog)
		#i += 1

#func _ready():
#	$chel_geroi_in/CanvasLayer/Polygon2D/RichTextLabe.connect("laba_chat", print1)
#	$chel_geroi_in/CanvasLayer/Polygon2D/RichTextLabe.laba_chat.connect(print1)
