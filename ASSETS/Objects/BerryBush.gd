extends Node2D


onready var bush = $Sprite
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var stabbed = false
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
		if(body.has_method("bushFX")):
			body.bushFX()
		$Rustle.play()
		while(not stabbed):
			yield(get_tree().create_timer(.1), "timeout")
		body.position = $"../SpawnPoint".position
		bush.visible = false
		bushPoints = 1
		


func _on_Rustle_finished():
	stabbed = true
