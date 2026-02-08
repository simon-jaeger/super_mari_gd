class_name Sprite
extends Sprite2D

var outline = false:
	set(x): material = preload("res://assets/shaders/outline_shader.tres") if x else null
