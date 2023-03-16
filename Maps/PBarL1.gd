extends ProgressBar


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#onready var bumpAmount = 20
var hazardAmount = 5
var percentMove = 100/hazardAmount

func bumper():
	value += percentMove



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
