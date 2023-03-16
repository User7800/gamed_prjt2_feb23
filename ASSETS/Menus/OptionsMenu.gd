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


func _on_Button_pressed():
	$paper.play()
	get_tree().change_scene("res://ASSETS/Menus/TitleScreen.tscn")


func _on_CheckBox_toggled(button_pressed):
	$toggleClick.play()
	OS.window_fullscreen = !OS.window_fullscreen


func _on_CheckBox_mouse_entered():
	pass # Replace with function body.


func _on_Button_mouse_entered():
	$ButtonClickSound.play()
