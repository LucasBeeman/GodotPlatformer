extends KinematicBody2D


func _on_HitArea_body_entered(body):
	if body == KinematicBody2D:
		get_tree().change_scene("res://GameOver.tscn")


func _on_HurtArea_body_entered(body):
	if body == KinematicBody2D:
		get_tree().change_scene("res://WinScreen.tscn")
