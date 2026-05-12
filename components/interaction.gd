class_name Interaction
extends Area2D

@onready var entity = owner as Entity
@onready var shape: CollisionShape2D = $interaction_shape

func _ready():
	body_entered.connect(func(x):
		entity.sprite.outline = true
		Game.hero.target = entity
	)
	body_exited.connect(func(x):
		entity.sprite.outline = false
		Game.hero.target = null
	)
