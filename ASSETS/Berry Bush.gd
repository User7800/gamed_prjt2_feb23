extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var BerryBushDeaths = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	BerryBushDeaths += 1
	if (BerryBushDeaths <= 1):
		position = $"../SpawnPoint".position
