extends KinematicBody2D

#onready var JumpSound = $Jump
onready var daddy = get_parent()
onready var animation_tree = $AnimationTree
onready var animate = $AnimationPlayer
#onready var ani_saw = 
onready var state_machine = animation_tree.get("parameters/playback")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector2(0, 0)
var SPEED = 200
var JUMP = -700
var GRAV = 20
const TERM_GRAVITY = 1000
var last = 1
var sawDeaths = 0


func _physics_process(delta):
	# state_machine.travel("IdleRight")
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		state_machine.travel("WalkRight")
		last = 1
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		state_machine.travel("WalkLeft")
		last = 2
	if(velocity.y < TERM_GRAVITY):
		velocity.y = (velocity.y + GRAV)
	
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP
		animate.play("Jump")
		state_machine.travel("Jump")
		$Jump.play()
		
		
	
	#print("Y=", velocity.y, " X=", velocity.x)
	#ani_idle_LR()
	#ani_walk_LR(delta)
	velocity = move_and_slide(velocity, Vector2.UP)
	
	velocity.x = lerp(velocity.x, 0, 0.1)


func _on_Fallzone_body_entered(body):
	get_tree().change_scene("res://MainScene.tscn")

#func ani_Jump():
#	if(velocity.y < -10):
#		#print("Attempting to Jump")
#		# state_machine.travel("Jump")
#		animate.play("Jump")
	

func ani_idle_LR():
	if(velocity.x < 10 and velocity.x > -10)and is_on_floor():
		if (last == 1):
			state_machine.travel("IdleRight")
			#animate.play("IdleRight")
		else:
			#animate.play("IdleLeft")
			state_machine.travel("IdleLeft")


func bushFX():
	SPEED = 10
	JUMP = -250

func outOfBush():
	SPEED = 200
	JUMP = -700
	
func metalPit():
	GRAV = .5
	velocity.y = 0
	SPEED = 50
	JUMP = -7

func outOfPit():
	GRAV = 20
	SPEED = 200
	JUMP = -700

func speedPotion():
	SPEED = 400
	
func UNspeed():
	SPEED = 200

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#ani_Jump()
	if(is_on_floor()):
		ani_idle_LR()
	# ani_walk_LR()


func _on_Area2D_body_entered(body):
	position = $"../SpawnPoint".position


func _on_SawArea_body_entered(body):
	sawDeaths += 1
	if(sawDeaths <=1):
		position = $"../SpawnPoint".position
		daddy.sawDeath = 1
	#get_tree().change_scene("res://MainScene.tscn")


func _on_fall_area_body_entered(body):
	position = $"../SpawnPoint".position
