extends Area2D

func _on_crab_body_entered(body):
	queue_free()
