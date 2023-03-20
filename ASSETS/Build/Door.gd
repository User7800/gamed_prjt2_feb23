extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Area2D_body_entered(body):
	$"../TransiLayer".visible = true
	$"../TransiLayer/Transitions/AnimationPlayer".play("Transition")
	yield(get_tree().create_timer(1), "timeout")
	get_tree().change_scene("res://Maps/Factory.tscn")
