extends Node2D

func _on_SawArea_body_entered(body):
	queue_free() 
