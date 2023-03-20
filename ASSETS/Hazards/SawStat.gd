extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var ani_saw = $SawAnimationPlayer
var bewl = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_SawArea_body_entered(body):
	if(bewl):
		$SawHitGnome.play()
		bewl = false
		body.position = $"../../SpawnPoint".position
		ani_saw.play("Halt")
		

