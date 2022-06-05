extends Node2D

func _ready():
	LebenCounter.leben = 3
	
func _physics_process(delta):
	
	if LebenCounter.leben == 2:
		$Leben3.hide()
	if LebenCounter.leben == 1:
		$Leben2.hide()
	if LebenCounter.leben == 0:
		get_tree().reload_current_scene()
		
