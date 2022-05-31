extends Node

var Coin

signal Coin_changed(Coin)

func update_coin(var delta):
	Coin+=delta
