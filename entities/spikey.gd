extends Entity

func _ready():
	animator.play("walk")

func _physics_process(delta: float):
	if raycast.is_colliding(): scale.x = - scale.x
	body.velocity.x = scale.x * 30
	body.update()
