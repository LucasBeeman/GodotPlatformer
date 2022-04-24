extends RigidBody2D

func _on_HurtArea_area_entered(_area):
	get_tree().change_scene("res://WinScreen.tscn")

func _on_HitArea_area_entered(_area):
	get_tree().change_scene("res://LevelOne.tscn")
