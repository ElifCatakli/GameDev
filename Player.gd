extends KinematicBody2D

const speed = 400
const jump = -550
const gravity = 20
const UP = Vector2(0, -1)
#n a boolean context, a Vector2 will evaluate to false if it's equal to Vector2(0, 0). 
#Otherwise, a Vector2 will always evaluate to true
#can be used to represent positions in 2D space or any other pair of numeric values.

var coins = 0
var motion = Vector2()

func _physics_process(delta):
	motion.y += gravity

	if Input.is_action_pressed("ui_right"):
		motion.x = speed
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
	else: 
		motion.x = 0

	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = jump

	motion = move_and_slide(motion, UP)

func GetCoin():
	coins+=1
	print(coins)
