extends KinematicBody2D

var velocity = Vector2(0, 0)
const SPEED = 200
const JUMP = -800
const GRAV = 20
const TERM_GRAVITY = 1000

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		
	if(velocity.y < TERM_GRAVITY):
		velocity.y += GRAV
	
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP
	
	print(velocity.y)
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
	velocity.x = lerp(velocity.x, 0, 0.1)



func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://MainScene.tscn")
