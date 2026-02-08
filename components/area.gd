class_name Area
extends Area2D

@onready var entity = owner as Entity
@onready var shape: CollisionShape2D = $area_shape

func _ready():
	body_entered.connect(func(x): entity.on_enter())
	body_exited.connect(func(x): entity.on_exit())
