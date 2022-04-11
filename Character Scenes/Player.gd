extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 40
const MAXFALLSPEED = 500
const MAXSPEED = 200
const JUMPFORCE = 600

var motion = Vector2()

func _physics_process(delta):
	motion.y += GRAVITY
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED
	
	if Input.is_action_pressed("right"):
		motion.x = MAXSPEED
	elif Input.is_action_pressed("left"):
		motion.x = -MAXSPEED
	else:
		motion.x = 0
		
	if is_on_floor():
		if Input.is_action_just_pressed("up"):
			motion.y = -JUMPFORCE
			
	motion = move_and_slide(motion, UP)
