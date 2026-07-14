@icon("res://assets/icons/hitbox.svg")
class_name Hitbox
extends Area2D

@export var damage = 1

@onready var entity = owner as Entity

func _ready():
	body_entered.connect(func(x):
		var other = x.owner as Entity
		if other: other.on_hit.call_deferred(self)
	)
