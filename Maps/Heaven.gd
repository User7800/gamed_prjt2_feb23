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


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
