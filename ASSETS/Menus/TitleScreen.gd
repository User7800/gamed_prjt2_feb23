extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$paper.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Start_pressed():
	#$GiggleStart.play()
	get_tree().change_scene("res://Maps/MainScene.tscn")


func _on_Options_pressed():
	get_tree().change_scene("res://ASSETS/Menus/OptionsMenu.tscn")


func _on_Exit_pressed():
	get_tree().quit()


func _on_Start_mouse_entered():
	$GiggleStart.play()
	$ButtonClickSound.play()

func _on_Exit_mouse_entered():
	$ButtonClickSound.play()


func _on_Options_mouse_entered():
	$ButtonClickSound.play()
