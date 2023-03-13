extends ProgressBar


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var bumpAmount = 20
var hazards = 66
var percent = 100/hazards

func bumper():
	value += percent



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
