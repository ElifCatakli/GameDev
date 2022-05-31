extends Label

func _process(delta: float) -> void:
	$".".text="Coins:"+str(Global1.Coin)
