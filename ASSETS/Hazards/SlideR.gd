extends Node2D

onready var slide = $AnimationPlayer
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var bewl = true
var sizzled = false

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
		$SizzleShorter.play()
		while(not sizzled):
			yield(get_tree().create_timer(.1), "timeout")
		body.position = $"../SpawnPoint".position
		slide.play("Safe")


func _on_SizzleShorter_finished():
	sizzled = true
