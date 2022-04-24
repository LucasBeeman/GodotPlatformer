extends Node2D

func _on_Area2D_body_entered(_body):
	 get_tree().change_scene("res://Level2.tscn")


func _on_Area2D_area_entered(area):
	pass # Replace with function body.
