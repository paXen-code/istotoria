extends Node2D

func _on_samovar_pressed():
	var dialog = ['Это самовар', 'В доме нашем он – словно центр тепла и уюта', 'Когда гости собираются за столом, самовар кипит, чай разливается, разговоры льются рекой', 'Без него и праздник не праздник, и вечерний покой не тот', 'С ним дом полон жизни, а душа согревается']
	$CanvasLayer/Polygon2D/RichTextLabel.print1(dialog)


func _on_ochag_pressed():
	var dialog = ['Это очаг', 'Служит для приготовления пищи и обогрева', 'Когда в очаге зажигался огонь, то дым выходил через дверь', 'Без него холодно и еду не приготовить']
	$CanvasLayer/Polygon2D/RichTextLabel.print1(dialog)


func _on_skamia_pressed():
	var dialog = ['Это скамья', 'мы на ней можем спать', 'Да, она не мягкая, но ночь поспать абсолютно можно', 'на ней ещё мой дед спал']
	$CanvasLayer/Polygon2D/RichTextLabel.print1(dialog)
