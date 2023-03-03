extends KinematicBody2D

var velocity = Vector2(0, 0)
const SPEED = 200
const JUMP = -600
const GRAV = 20

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		
	velocity.y = (velocity.y + GRAV)
	
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP
	
	#print(velocity.y)
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
	velocity.x = lerp(velocity.x, 0, 0.1)
