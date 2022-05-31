extends Area2D

func _on_coins_body_entered(body):
	queue_free() #löscht die Gluehbirne
	#Global1.update_coin(1)
