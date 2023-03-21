extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var minSec = 0
var passed #= null
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	minSec += delta
	var seconds = fmod(minSec, 60)
	var minutes = fmod(minSec, 3600)/60
	passed = "%02d:%02d"% [minutes, seconds]
	text = passed
	#reference autoload for time storage



func _on_DoorEnd_storeTime3():
	if(passed != null):
		PlayerStats.LevelThreeTime = passed
