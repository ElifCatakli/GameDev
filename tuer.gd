extends Area2D

export(PackedScene) var target_scene
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("ui_accept"):
		if target_scene: #is null
			print("no scene")
			return 
			
		if get_overlapping_bodies().size()>0:
			next_level()

func next_level():
	var ERROR = get_tree().change_scene_to(target_scene)
	
	if ERROR != OK:
		print("etwas ist schief gelaufen")
