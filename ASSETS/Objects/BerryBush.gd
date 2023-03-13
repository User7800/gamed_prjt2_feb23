extends Node2D


onready var bush = $Sprite
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var bewl = true
var bushPoints = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if(bewl):
		bewl = false
		body.position = $"../SpawnPoint".position
		bush.visible = false
		bushPoints = 1
		
