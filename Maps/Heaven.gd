extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	#EndScreen1.visible = false
	#EndScreen.visible = false
	$TransiLayer.visible = true
	$TransiLayer/Transitions/AnimationPlayer.play("TransitionBackward")
	yield(get_tree().create_timer(1), "timeout")
	$TransiLayer.visible = false

var deathAmt = 0
var HazAmt = float(5.0)
var PBarPercent = float(100/HazAmt)

func _on_DeathArea_body_entered(body):
	#$Character/Robert.outOfPit()
	deathAmt += 1
	$Overlay/PBar.value += PBarPercent
	if(deathAmt<2):
		$Audio/DeathGiggle3.play()
	elif(deathAmt == 2):
		$Audio/DeathGiggle1.play()
	else:
		$Audio/DeathGiggle2.play()
