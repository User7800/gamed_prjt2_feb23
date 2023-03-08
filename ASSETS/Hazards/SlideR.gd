extends Node2D

onready var slide = $AnimationPlayer
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var kount = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	kount += 1
	print("             SLIDEKOUNT = ", kount)
	if(kount < 2):
		body.position = $"../SpawnPoint".position
		slide.play("Safe")
	if (kount >= 2):
		
		print("EEEEEEEEEEEEEEENTERRRRRRRRR THE SLIIIIIIIIIIDEEEEEEEEEEEE")
	#pass # Replace with function body.
