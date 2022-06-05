extends CanvasLayer

signal transitioned

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("uebergang_zu_dunkel")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "uebergang_zu_dunkel":
		emit_signal("transitioned")
		$AnimationPlayer.play("uebergang_zu_hell")

	
