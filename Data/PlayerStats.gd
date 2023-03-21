extends Node

#signal neutz_update
#var neutz: = 0
var LevelOneTime = ""
var LevelTwoTime = ""
var LevelThreeTime = ""
var L1P = ""
var L2P = ""
var L3P = ""
var counter = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func refresh():
	pass

func printer():
	while(counter < 50):
		counter += 1
		print("-----------------------1", LevelOneTime)
		print(LevelTwoTime)
		print(LevelThreeTime)
	counter = 0
