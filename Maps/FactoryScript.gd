extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$TransiLayer.visible = true
	$TransiLayer/Transitions/AnimationPlayer.play("TransitionBackward")
	yield(get_tree().create_timer(1), "timeout")
	$TransiLayer.visible = false
	$Hazards/MoltenMetalSmall/Sprite/AnimationPlayer.play("MetalMove")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

var deathAmt = 0
var HazAmt = float(6.0)
var PBarPercent = float(100/HazAmt)
#Progress Bar Incrementatiom
func _on_DeathArea_body_entered(body):
	$Character/Robert.outOfPit()
	deathAmt += 1
	$Overlay/PBar.value += PBarPercent
	if(deathAmt<2):
		$Audio/DeathScream.play()
	elif(deathAmt == 2):
		$Audio/DeathGiggle1.play()
	else:
		$Audio/DeathGiggle2.play()
