extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
var bewl = true

func _on_Area2D_body_entered(body):
	if(bewl):
		bewl = false
		body.position = $"../../SpawnPoint".position
		$LL.visible = false
		$LM.visible = false
		$LR.visible = false
		$beam1.visible = false
		$beam2.visible = false
