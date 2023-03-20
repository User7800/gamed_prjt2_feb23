extends ProgressBar

func load():
	var file = File.new()
	if not file.file_exists("user://save.dat"):
		return # Error! We don't have a save to load.
	file.open("user://save_game.dat", File.READ)
	var content = file.get_as_text()
	return content

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


func _on_PBar_tree_exiting():
	var file = File.new()
	file.open("user://save.dat", File.READ_WRITE)
	file.store_line("Level 2 completion: " + str(value) + '%')
	#print("Level 2 completion: " + str(value) + '%')
	print(file.get_as_text())
	file.close()


func _on_DoorFac_storePercent2():
	EndScreen.L2P = value
