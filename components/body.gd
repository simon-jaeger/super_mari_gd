class_name Body
extends CharacterBody2D

@export var gravity = 800

@onready var entity = owner as Entity
@onready var shape: CollisionShape2D = $body_shape

func update():
	if not is_on_floor():
		velocity.y += gravity * get_physics_process_delta_time()
		if velocity.y > 300: velocity.y = 300
	move_and_slide()
	entity.global_position = global_position
	position = Vector2.ZERO
