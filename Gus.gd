extends RigidBody2D

func _on_HurtArea_area_entered(area):
	get_tree().change_scene("res://LevelTwo.tscn")

func _on_HitArea_area_entered(area):
	get_tree().change_scene("res://LevelOne.tscn")
