class_name Stage
extends Node2D

func _ready():
	Game.stage = self

func change(path: String):
	await Game.transition.to_black()
	add_sibling(load(path).instantiate(), true)
	queue_free()
	Game.transition.from_black()
