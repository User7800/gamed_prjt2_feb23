extends Node2D

onready var push = get_parent()
onready var ani_saw = $SawAnimationPlayer
onready var ani_saw2 = $SawAnimationPlayer/SawAnimationTree
onready var SM = ani_saw2.get("parameters/playback")
var count = 0

func _on_SawArea_body_entered(body):
	#ani_saw.play("stopSaw")
	#ani_saw2.travel("stopSaw")
	#queue_free()
	$SawHitGnome.play()
	ani_saw.play("Halt")
	#$SawAnimationPlayer.f

##func changeAni():
	##ani_saw.play("stopSaw")
	
