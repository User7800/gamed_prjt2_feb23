extends Node2D
onready var ani_saw = $SawAnimationPlayer
onready var ani_saw2 = $SawAnimationPlayer/SawAnimationTree
onready var SM = ani_saw2.get("parameters/playback")

func _on_SawArea_body_entered(body):
	ani_saw.play("stopSaw")
	ani_saw2.travel("stopSaw")
	queue_free()
	#$SawAnimationPlayer.f
