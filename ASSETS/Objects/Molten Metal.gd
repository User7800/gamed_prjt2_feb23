extends Area2D



# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var moltenDeaths = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	moltenDeaths += 1
	if (moltenDeaths <=1):
		get_tree().change_scene("res://Level2.tscn")
	
