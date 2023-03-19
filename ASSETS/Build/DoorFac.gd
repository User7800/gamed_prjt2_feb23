extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#onready var deaths = get_tree("res://Maps/FactoryScript.gd")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	$"../TransiLayer".visible = true
	$"../TransiLayer/Transitions/AnimationPlayer".play("Transition")
	yield(get_tree().create_timer(1), "timeout")
	get_tree().change_scene("res://Maps/Level3.tscn")
	#pass